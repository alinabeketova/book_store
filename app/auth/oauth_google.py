import logging
import os
import urllib.parse
from http import HTTPStatus
from typing import Any

import httpx
from fastapi import Depends, HTTPException, status
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer

from settings.settings import get_settings

logger = logging.getLogger(__name__)
security = HTTPBearer()


def generate_google_oauth_redirect_uri() -> str:
    settings = get_settings()

    redirect_uri = "http://127.0.0.1:8001/login/google" if os.name == "nt" else "http://127.0.0.1:8000/login/google"

    logger.info("Using redirect_uri: %s", redirect_uri)
    logger.info("Client ID: %s...", settings.OAUTH_GOOGLE_CLIENT_ID[:10])
    query_params = {
        "client_id": settings.OAUTH_GOOGLE_CLIENT_ID,
        "redirect_uri": redirect_uri,
        "response_type": "code",
        "scope": "openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile",
        "access_type": "offline",
        "prompt": "consent",
    }

    query_string = urllib.parse.urlencode(query_params)
    base_url = "https://accounts.google.com/o/oauth2/v2/auth"
    full_url = f"{base_url}?{query_string}"

    logger.info("Generated OAuth URL: %s...", full_url[:100])
    return full_url


async def verify_google_token(credentials: HTTPAuthorizationCredentials = Depends(security)) -> dict:
    token = credentials.credentials

    def raise_invalid_token() -> None:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid token")

    def raise_token_error(error_description: str) -> None:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail=error_description)

    try:
        async with httpx.AsyncClient() as client:
            response = await client.get(
                "https://www.googleapis.com/oauth2/v3/tokeninfo", params={"access_token": token}
            )

            if response.status_code != HTTPStatus.OK:
                raise_invalid_token()

            token_info = response.json()

            if "error" in token_info:
                raise_token_error(token_info["error_description"])

            return token_info

    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Token verification failed") from e


async def get_current_google_user(credentials: HTTPAuthorizationCredentials = Depends(security)) -> dict[str, Any]:
    token = credentials.credentials

    def raise_invalid_token_error() -> None:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid token")

    try:
        async with httpx.AsyncClient() as client:
            response = await client.get(
                "https://www.googleapis.com/oauth2/v3/userinfo", headers={"Authorization": f"Bearer {token}"}
            )

            if response.status_code != HTTPStatus.OK:
                raise_invalid_token_error()

            return response.json()

    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Authentication failed") from e

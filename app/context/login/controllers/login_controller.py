from fastapi import APIRouter, Depends

from app.context.login.dependencies.services import ILoginService
from app.context.login.schemas.login_schema import LoginRequestDTO, LoginResponseDTO
from app.exception_handler import error_handler

router_login = APIRouter(tags=["login"])


@router_login.post("/login", summary="Post login")
@error_handler
async def post_login(service: ILoginService, data: LoginRequestDTO = Depends()) -> LoginResponseDTO:
    return await service.login(data=data)

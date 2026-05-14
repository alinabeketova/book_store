from fastapi import APIRouter, Depends

from app.auth.auth import JWTBearer
from app.context.wishlist.dependencies.services import IWishlistService
from app.exception_handler import error_handler

router_wishlist = APIRouter(tags=["wishlist"])


@router_wishlist.get(
    "/wishlist/{user_email:str}", summary="Get wishlist by user_email", dependencies=[Depends(JWTBearer())]
)
@error_handler
async def get_wishlist_by_user_email(service: IWishlistService, user_email: str) -> list[int]:
    return await service.get_wishlist_by_user_email(user_email=user_email)

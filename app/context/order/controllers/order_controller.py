from fastapi import APIRouter, Depends

from app.auth.auth import JWTBearer
from app.context.order.dependencies.services import IOrderService
from app.context.order.schemas.order_schema import UserOrderDTO
from app.exception_handler import error_handler

router_order = APIRouter(tags=["order"])


@router_order.get("/user_order/{user_email:str}", summary="Get order user by user", dependencies=[Depends(JWTBearer())])
@error_handler
async def get_user_order_by_email(service: IOrderService, user_email: str) -> list[UserOrderDTO]:
    return await service.get_user_order_by_email(user_email=user_email)

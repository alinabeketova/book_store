from app.context.order.dependencies.repositories import IOrderRepository
from app.context.order.schemas.order_schema import UserOrderDTO


class OrderService:
    def __init__(self: "OrderService", repository: IOrderRepository) -> None:
        self.repository = repository

    async def get_user_order_by_email(self: "OrderService", user_email: str) -> list[UserOrderDTO]:
        return await self.repository.get_user_order_by_email(user_email=user_email)

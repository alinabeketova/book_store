from sqlalchemy import select

from app.base.repositories.base_repository import BaseRepository
from app.context.order.models.order_model import OrderModel
from app.context.order.schemas.order_schema import CreateOrderDTO, OrderDTO, UpdateOrderDTO, UserOrderDTO
from app.context.status.models.status_model import StatusModel
from app.context.user.models.user_model import UserModel


class OrderRepository(BaseRepository[CreateOrderDTO, UpdateOrderDTO, OrderDTO]):
    dto = OrderDTO
    model = OrderModel
    user = UserModel
    status = StatusModel

    async def get_user_order_by_email(self, user_email: str) -> list[UserOrderDTO]:
        return [
            UserOrderDTO(**order)
            for order in (
                (
                    await self._session.execute(
                        select(
                            self.model.order_number,
                            self.model.total_amount,
                            self.model.discount_amount,
                            self.model.final_amount,
                            self.model.delivery_address,
                            self.model.note,
                            self.model.create_date,
                            self.model.update_date,
                            self.status.name,
                        )
                        .select_from(self.user)
                        .join(self.model, self.model.user_id == self.user.id)
                        .join(self.status, self.status.id == self.model.status_id)
                        .where(self.user.email == user_email)
                    )
                )
                .mappings()
                .all()
            )
        ]

from app.base.repositories.base_repository import BaseRepository
from app.context.order.models.order_model import OrderModel
from app.context.order.schemas.order_schema import CreateOrderDTO, OrderDTO, UpdateOrderDTO


class OrderRepository(BaseRepository[CreateOrderDTO, UpdateOrderDTO, OrderDTO]):
    dto = OrderDTO
    model = OrderModel

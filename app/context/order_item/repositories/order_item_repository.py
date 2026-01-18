from app.base.repositories.base_repository import BaseRepository
from app.context.order_item.models.order_item_model import OrderItemModel
from app.context.order_item.schemas.order_item_schema import CreateOrderItemDTO, OrderItemDTO, UpdateOrderItemDTO


class OrderItemRepository(BaseRepository[CreateOrderItemDTO, UpdateOrderItemDTO, OrderItemDTO]):
    dto = OrderItemDTO
    model = OrderItemModel

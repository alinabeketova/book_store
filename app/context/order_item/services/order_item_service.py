from app.context.order_item.dependencies.repositories import IOrderItemRepository


class OrderItemService:
    def __init__(self: "OrderItemService", repository: IOrderItemRepository) -> None:
        self.repository = repository

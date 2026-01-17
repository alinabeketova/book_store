from app.context.order.dependencies.repositories import IOrderRepository


class OrderService:
    def __init__(self: "OrderService", repository: IOrderRepository) -> None:
        self.repository = repository

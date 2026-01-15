from app.context.cart.dependencies.repositories import ICartRepository


class CartService:
    def __init__(self: "CartService", repository: ICartRepository) -> None:
        self.repository = repository

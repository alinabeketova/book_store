from app.context.wishlist.dependencies.repositories import IWishlistRepository


class WishlistService:
    def __init__(self: "WishlistService", repository: IWishlistRepository) -> None:
        self.repository = repository

from app.context.wishlist.dependencies.repositories import IWishlistRepository


class WishlistService:
    def __init__(self: "WishlistService", repository: IWishlistRepository) -> None:
        self.repository = repository

    async def get_wishlist_by_user_email(self: "WishlistService", user_email: str) -> list[int]:
        return await self.repository.get_wishlist_by_user_email(user_email=user_email)

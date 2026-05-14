from sqlalchemy import select

from app.base.repositories.base_repository import BaseRepository
from app.context.book.models.book_model import BookModel
from app.context.user.models.user_model import UserModel
from app.context.wishlist.models.wishlist_model import WishlistModel
from app.context.wishlist.schemas.wishlist_schema import CreateWishlistDTO, UpdateWishlistDTO, WishlistDTO


class WishlistRepository(BaseRepository[CreateWishlistDTO, UpdateWishlistDTO, WishlistDTO]):
    dto = WishlistDTO
    model = WishlistModel
    book = BookModel
    user = UserModel

    async def get_wishlist_by_user_email(self, user_email: str) -> list[int]:
        return [
            book.id  # или book['id']
            for book in (
                (
                    await self._session.execute(
                        select(self.book.id)
                        .select_from(self.model)
                        .join(self.book, self.book.id == self.model.book_id)
                        .join(self.user, self.user.id == self.model.user_id)
                        .where(self.user.email == user_email)
                    )
                )
                .mappings()
                .all()
            )
        ]

from app.base.repositories.base_repository import BaseRepository
from app.context.wishlist.models.wishlist_model import WishlistModel
from app.context.wishlist.schemas.wishlist_schema import CreateWishlistDTO, UpdateWishlistDTO, WishlistDTO


class WishlistRepository(BaseRepository[CreateWishlistDTO, UpdateWishlistDTO, WishlistDTO]):
    dto = WishlistDTO
    model = WishlistModel

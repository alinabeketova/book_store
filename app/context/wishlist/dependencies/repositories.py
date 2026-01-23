from typing import Annotated

from fastapi import Depends

from app.context.wishlist.repositories.wishlist_repository import WishlistRepository

IWishlistRepository = Annotated[WishlistRepository, Depends()]

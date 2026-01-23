from typing import Annotated

from fastapi import Depends

from app.context.wishlist.services.wishlist_service import WishlistService

IWishlistService = Annotated[WishlistService, Depends()]

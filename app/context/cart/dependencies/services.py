from typing import Annotated

from fastapi import Depends

from app.context.cart.services.cart_service import CartService

ICartService = Annotated[CartService, Depends()]

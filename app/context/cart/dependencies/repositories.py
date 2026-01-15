from typing import Annotated

from fastapi import Depends

from app.context.cart.repositories.cart_repository import CartRepository

ICartRepository = Annotated[CartRepository, Depends()]

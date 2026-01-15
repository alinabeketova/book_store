from app.base.repositories.base_repository import BaseRepository
from app.context.cart.models.cart_model import CartModel
from app.context.cart.schemas.cart_schema import CartDTO, CreateCartDTO, UpdateCartDTO


class CartRepository(BaseRepository[CreateCartDTO, UpdateCartDTO, CartDTO]):
    dto = CartDTO
    model = CartModel

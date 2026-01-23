from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class WishlistDTO(Base):
    id: int
    user_id: int
    book_id: int
    create_date: datetime


class CreateWishlistDTO(Base):
    user_id: int
    book_id: int
    create_date: datetime


class UpdateWishlistDTO(Base):
    user_id: int
    book_id: int
    create_date: datetime


class WishlistResponse(BaseResponse):
    pass

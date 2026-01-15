from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class CartDTO(Base):
    id: int
    user_id: int
    book_id: int
    quantity: int
    create_date: datetime
    update_date: datetime | None = None


class CreateCartDTO(Base):
    user_id: int
    book_id: int
    quantity: int
    create_date: datetime
    update_date: datetime | None = None


class UpdateCartDTO(Base):
    user_id: int
    book_id: int
    quantity: int
    create_date: datetime
    update_date: datetime | None = None


class CartResponse(BaseResponse):
    pass

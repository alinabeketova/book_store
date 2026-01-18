from datetime import datetime
from decimal import Decimal

from app.base.schemas.base_schema import Base, BaseResponse


class OrderItemDTO(Base):
    id: int
    order_id: int
    book_id: int
    quantity: int
    unit_price: Decimal
    discount: Decimal | None
    total_price: Decimal
    create_date: datetime


class CreateOrderItemDTO(Base):
    order_id: int
    book_id: int
    quantity: int
    unit_price: Decimal
    discount: Decimal | None
    total_price: Decimal
    create_date: datetime


class UpdateOrderItemDTO(Base):
    order_id: int
    book_id: int
    quantity: int
    unit_price: Decimal
    discount: Decimal | None
    total_price: Decimal
    create_date: datetime


class OrderItemResponse(BaseResponse):
    pass

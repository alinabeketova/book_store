from datetime import datetime
from decimal import Decimal

from app.base.schemas.base_schema import Base, BaseResponse


class OrderDTO(Base):
    id: int
    order_number: str
    user_id: int
    total_amount: Decimal
    discount_amount: Decimal | None = None
    final_amount: Decimal
    delivery_address: str
    contact_phone: str
    note: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime | None = None


class CreateOrderDTO(Base):
    order_number: str
    user_id: int
    total_amount: Decimal
    discount_amount: Decimal | None = None
    final_amount: Decimal
    delivery_address: str
    contact_phone: str
    note: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime | None = None


class UpdateOrderDTO(Base):
    order_number: str
    user_id: int
    total_amount: Decimal
    discount_amount: Decimal | None = None
    final_amount: Decimal
    delivery_address: str
    contact_phone: str
    note: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime | None = None


class OrderResponse(BaseResponse):
    pass

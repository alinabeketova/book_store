from datetime import datetime
from decimal import Decimal

from app.base.schemas.base_schema import Base, BaseResponse


class PromoCodeDTO(Base):
    id: int
    code: str
    description: str | None = None
    discount_type: str
    discount_value: Decimal
    min_order_amount: Decimal | None = None
    max_discount_amount: Decimal | None = None
    valid_from: datetime
    valid_to: datetime
    usage_limit: int | None = None
    used_count: int
    status_id: int
    create_date: datetime


class CreatePromoCodeDTO(Base):
    order_id: int
    book_id: int
    quantity: int
    unit_price: Decimal
    discount: Decimal | None
    total_price: Decimal
    create_date: datetime


class UpdatePromoCodeDTO(Base):
    order_id: int
    book_id: int
    quantity: int
    unit_price: Decimal
    discount: Decimal | None
    total_price: Decimal
    create_date: datetime


class PromoCodeResponse(BaseResponse):
    pass

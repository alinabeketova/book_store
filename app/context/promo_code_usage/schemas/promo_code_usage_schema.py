from datetime import datetime
from decimal import Decimal

from app.base.schemas.base_schema import Base, BaseResponse


class PromoCodeUsageDTO(Base):
    id: int
    promo_code_id: int
    user_id: int
    order_id: int
    discount_applied: Decimal
    create_date: datetime


class CreatePromoCodeUsageDTO(Base):
    promo_code_id: int
    user_id: int
    order_id: int
    discount_applied: Decimal
    create_date: datetime


class UpdatePromoCodeUsageDTO(Base):
    promo_code_id: int
    user_id: int
    order_id: int
    discount_applied: Decimal
    create_date: datetime


class PromoCodeResponse(BaseResponse):
    pass

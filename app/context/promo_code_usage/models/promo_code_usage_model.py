from datetime import datetime
from decimal import Decimal

from sqlalchemy import Date, ForeignKey, Numeric
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.order.models.order_model import OrderModel
from app.context.promo_code.models.promo_code_model import PromoCodeModel
from app.context.user.models.user_model import UserModel


class PromoCodeUsageModel(Base):
    __tablename__ = "promo_code_usage"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    promo_code_id: Mapped[int] = mapped_column(ForeignKey(PromoCodeModel.id), nullable=False)
    user_id: Mapped[int] = mapped_column(ForeignKey(UserModel.id), nullable=False)
    order_id: Mapped[int] = mapped_column(ForeignKey(OrderModel.id), nullable=False)
    discount_applied: Mapped[Decimal] = mapped_column(Numeric(10, 2), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

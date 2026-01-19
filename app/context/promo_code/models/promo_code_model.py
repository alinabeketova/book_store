from datetime import datetime
from decimal import Decimal

from sqlalchemy import Date, ForeignKey, Integer, Numeric, String
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.status.models.status_model import StatusModel


class PromoCodeModel(Base):
    __tablename__ = "promo_code"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    code: Mapped[str] = mapped_column(String(50), nullable=False)
    description: Mapped[str | None] = mapped_column(String(255))
    discount_type: Mapped[str] = mapped_column(String(10), nullable=False)
    discount_value: Mapped[Decimal] = mapped_column(Numeric(10, 2), nullable=False)
    min_order_amount: Mapped[Decimal | None] = mapped_column(Numeric(10, 2))
    max_discount_amount: Mapped[Decimal | None] = mapped_column(Numeric(10, 2))
    valid_from: Mapped[datetime] = mapped_column(Date, nullable=False)
    valid_to: Mapped[datetime] = mapped_column(Date, nullable=False)
    usage_limit: Mapped[int | None] = mapped_column(Integer)
    used_count: Mapped[int] = mapped_column(Integer, nullable=False)
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

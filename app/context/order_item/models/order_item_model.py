from datetime import datetime
from decimal import Decimal

from sqlalchemy import Date, ForeignKey, Integer, Numeric
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.book.models.book_model import BookModel
from app.context.order.models.order_model import OrderModel


class OrderItemModel(Base):
    __tablename__ = "order_item"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    order_id: Mapped[int] = mapped_column(ForeignKey(OrderModel.id), nullable=False)
    book_id: Mapped[int] = mapped_column(ForeignKey(BookModel.id), nullable=False)
    quantity: Mapped[int] = mapped_column(Integer, nullable=False)
    unit_price: Mapped[Decimal] = mapped_column(Numeric(10, 2), nullable=False)
    discount: Mapped[Decimal | None] = mapped_column(Numeric(5, 2))
    total_price: Mapped[Decimal] = mapped_column(Numeric(10, 2), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

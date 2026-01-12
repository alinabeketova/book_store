from datetime import datetime
from decimal import Decimal

from sqlalchemy import Date, Float, ForeignKey, Integer, Numeric, String, Text
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.publisher.models.publisher_model import PublisherModel
from app.context.status.models.status_model import StatusModel


class BookModel(Base):
    __tablename__ = "book"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    isbn: Mapped[str] = mapped_column(String(20), nullable=False)
    title: Mapped[str] = mapped_column(String(50), nullable=False)
    description: Mapped[str | None] = mapped_column(Text)
    publication_year: Mapped[int | None] = mapped_column(Integer)
    pages: Mapped[int | None] = mapped_column(Integer)
    cover_type: Mapped[str | None] = mapped_column(String(50))
    weight: Mapped[float | None] = mapped_column(Float)
    dimensions: Mapped[str | None] = mapped_column(String(50))
    language: Mapped[str | None] = mapped_column(String(50))
    publisher_id: Mapped[int] = mapped_column(ForeignKey(PublisherModel.id), nullable=False)
    price: Mapped[Decimal] = mapped_column(Numeric(10, 2), nullable=False)
    discount: Mapped[Decimal | None] = mapped_column(Numeric(5, 2))
    quantity_in_stock: Mapped[int] = mapped_column(Integer, nullable=False)
    min_quantity: Mapped[int] = mapped_column(Integer, nullable=False)
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

from datetime import date, datetime

from sqlalchemy import Date, ForeignKey, String, Text
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.status.models.status_model import StatusModel


class AuthorModel(Base):
    __tablename__ = "author"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    full_name: Mapped[str] = mapped_column(String(100), nullable=False)
    biography: Mapped[str | None] = mapped_column(Text)
    birth_date: Mapped[date | None] = mapped_column(Date)
    death_date: Mapped[date | None] = mapped_column(Date)
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

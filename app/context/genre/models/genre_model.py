from datetime import datetime

from sqlalchemy import Date, ForeignKey, String, Text
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.status.models.status_model import StatusModel


class GenreModel(Base):
    __tablename__ = "genre"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    name: Mapped[str] = mapped_column(String(50), nullable=False)
    description: Mapped[str | None] = mapped_column(Text)
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

from datetime import datetime

from sqlalchemy import Date, ForeignKey, String
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.status.models.status_model import StatusModel


class PublisherModel(Base):
    __tablename__ = "publisher"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    name: Mapped[str] = mapped_column(String(255), nullable=False)
    address: Mapped[str | None] = mapped_column(String(255))
    phone: Mapped[str | None] = mapped_column(String(20))
    email: Mapped[str | None] = mapped_column(String(100))
    website: Mapped[str | None] = mapped_column(String(255))
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

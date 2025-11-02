from sqlalchemy import String
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base


class StatusModel(Base):
    __tablename__ = "status"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    name: Mapped[str] = mapped_column(String(100), nullable=False)
    note: Mapped[str | None] = mapped_column(String(255))

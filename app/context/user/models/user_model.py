from datetime import date

from sqlalchemy import Date, String
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base


class UserModel(Base):
    __tablename__ = "user"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    first_name: Mapped[str] = mapped_column(String(20), nullable=False)
    middle_name: Mapped[str | None] = mapped_column(String(20))
    last_name: Mapped[str] = mapped_column(String(20), nullable=False)
    date_of_birth: Mapped[date] = mapped_column(Date, nullable=False)
    address: Mapped[str | None] = mapped_column(String(100))
    email: Mapped[str | None] = mapped_column(String(20), unique=True, nullable=False)
    passport_number: Mapped[str] = mapped_column(String(10), nullable=False)
    password: Mapped[str] = mapped_column(String(255), nullable=False)

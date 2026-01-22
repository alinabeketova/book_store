from datetime import datetime

from sqlalchemy import Date, ForeignKey, Integer, Text
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.book.models.book_model import BookModel
from app.context.status.models.status_model import StatusModel
from app.context.user.models.user_model import UserModel


class ReviewModel(Base):
    __tablename__ = "review"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    user_id: Mapped[int] = mapped_column(ForeignKey(UserModel.id), nullable=False)
    book_id: Mapped[int] = mapped_column(ForeignKey(BookModel.id), nullable=False)
    rating: Mapped[int] = mapped_column(Integer, nullable=False)
    comment: Mapped[str | None] = mapped_column(Text)
    status_id: Mapped[int] = mapped_column(ForeignKey(StatusModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)
    update_date: Mapped[datetime | None] = mapped_column(Date)

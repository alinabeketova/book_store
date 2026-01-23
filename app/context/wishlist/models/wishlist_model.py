from datetime import datetime

from sqlalchemy import Date, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.book.models.book_model import BookModel
from app.context.user.models.user_model import UserModel


class WishlistModel(Base):
    __tablename__ = "wishlist"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    user_id: Mapped[int] = mapped_column(ForeignKey(UserModel.id), nullable=False)
    book_id: Mapped[int] = mapped_column(ForeignKey(BookModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

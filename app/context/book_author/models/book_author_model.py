from datetime import datetime

from sqlalchemy import Boolean, Date, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.author.models.author_model import AuthorModel
from app.context.book.models.book_model import BookModel


class BookAuthorModel(Base):
    __tablename__ = "book_author"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    book_id: Mapped[int] = mapped_column(ForeignKey(BookModel.id), nullable=False)
    author_id: Mapped[int] = mapped_column(ForeignKey(AuthorModel.id), nullable=False)
    is_main_author: Mapped[bool] = mapped_column(Boolean, nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

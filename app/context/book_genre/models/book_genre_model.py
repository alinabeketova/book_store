from datetime import datetime

from sqlalchemy import Date, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.book.models.book_model import BookModel
from app.context.genre.models.genre_model import GenreModel


class BookGenreModel(Base):
    __tablename__ = "book_genre"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    book_id: Mapped[int] = mapped_column(ForeignKey(BookModel.id), nullable=False)
    genre_id: Mapped[int] = mapped_column(ForeignKey(GenreModel.id), nullable=False)
    create_date: Mapped[datetime] = mapped_column(Date, nullable=False)

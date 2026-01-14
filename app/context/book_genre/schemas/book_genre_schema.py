from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class BookGenreDTO(Base):
    id: int
    book_id: int
    genre_id: int
    create_date: datetime


class CreateBookGenreDTO(Base):
    book_id: int
    genre_id: int
    create_date: datetime


class UpdateBookGenreDTO(Base):
    book_id: int
    genre_id: int
    create_date: datetime


class BookGenreResponse(BaseResponse):
    pass

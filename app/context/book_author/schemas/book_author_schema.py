from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class BookAuthorDTO(Base):
    id: int
    book_id: int
    author_id: int
    is_main_author: bool
    create_date: datetime


class CreateBookAuthorDTO(Base):
    book_id: int
    author_id: int
    is_main_author: bool
    create_date: datetime


class UpdateBookAuthorDTO(Base):
    book_id: int
    author_id: int
    is_main_author: bool
    create_date: datetime


class BookAuthorResponse(BaseResponse):
    pass

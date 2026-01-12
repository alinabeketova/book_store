from typing import Annotated

from fastapi import Depends

from app.context.book.repositories.book_repository import BookRepository

IBookRepository = Annotated[BookRepository, Depends()]

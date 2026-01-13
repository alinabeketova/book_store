from typing import Annotated

from fastapi import Depends

from app.context.book_author.repositories.book_author_repository import BookAuthorRepository

IBookAuthorRepository = Annotated[BookAuthorRepository, Depends()]

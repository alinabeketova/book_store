from typing import Annotated

from fastapi import Depends

from app.context.book_author.services.book_author_service import BookAuthorService

IBookAuthorService = Annotated[BookAuthorService, Depends()]

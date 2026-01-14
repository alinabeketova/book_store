from typing import Annotated

from fastapi import Depends

from app.context.book_genre.services.book_genre_service import BookGenreService

IBookGenreService = Annotated[BookGenreService, Depends()]

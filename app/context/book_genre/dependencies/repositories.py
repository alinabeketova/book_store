from typing import Annotated

from fastapi import Depends

from app.context.book_genre.repositories.book_genre_repository import BookGenreRepository

IBookGenreRepository = Annotated[BookGenreRepository, Depends()]

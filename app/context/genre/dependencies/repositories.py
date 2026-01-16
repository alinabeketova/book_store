from typing import Annotated

from fastapi import Depends

from app.context.genre.repositories.genre_repository import GenreRepository

IGenreRepository = Annotated[GenreRepository, Depends()]

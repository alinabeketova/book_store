from typing import Annotated

from fastapi import Depends

from app.context.genre.services.genre_service import GenreService

IGenreService = Annotated[GenreService, Depends()]

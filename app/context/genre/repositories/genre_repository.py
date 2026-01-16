from app.base.repositories.base_repository import BaseRepository
from app.context.genre.models.genre_model import GenreModel
from app.context.genre.schemas.genre_schema import CreateGenreDTO, GenreDTO, UpdateGenreDTO


class GenreRepository(BaseRepository[CreateGenreDTO, UpdateGenreDTO, GenreDTO]):
    dto = GenreDTO
    model = GenreModel

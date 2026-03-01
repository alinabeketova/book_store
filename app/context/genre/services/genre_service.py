from app.context.genre.dependencies.repositories import IGenreRepository
from app.context.genre.schemas.genre_schema import GenreDTO


class GenreService:
    def __init__(self: "GenreService", repository: IGenreRepository) -> None:
        self.repository = repository

    async def get_genre(self: "GenreService") -> list[GenreDTO]:
        return await self.repository.get_multi()

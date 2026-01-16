from app.context.genre.dependencies.repositories import IGenreRepository


class GenreService:
    def __init__(self: "GenreService", repository: IGenreRepository) -> None:
        self.repository = repository

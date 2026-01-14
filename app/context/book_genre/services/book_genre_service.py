from app.context.book_genre.dependencies.repositories import IBookGenreRepository


class BookGenreService:
    def __init__(self: "BookGenreService", repository: IBookGenreRepository) -> None:
        self.repository = repository

from app.context.book_author.dependencies.repositories import IBookAuthorRepository


class BookAuthorService:
    def __init__(self: "BookAuthorService", repository: IBookAuthorRepository) -> None:
        self.repository = repository

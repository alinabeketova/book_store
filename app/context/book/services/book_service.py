from app.context.book.dependencies.repositories import IBookRepository


class BookService:
    def __init__(self: "BookService", repository: IBookRepository) -> None:
        self.repository = repository

from app.context.author.dependencies.repositories import IAuthorRepository


class AuthorService:
    def __init__(self: "AuthorService", repository: IAuthorRepository) -> None:
        self.repository = repository

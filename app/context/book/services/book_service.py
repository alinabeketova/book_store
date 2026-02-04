from app.context.book.dependencies.repositories import IBookRepository
from app.context.book.schemas.book_schema import GetBook, GetBookCard


class BookService:
    def __init__(self: "BookService", repository: IBookRepository) -> None:
        self.repository = repository

    async def get_book_in_order(self: "BookService", order_number: str) -> list[GetBookCard]:
        return await self.repository.get_book_in_order(order_number=order_number)

    async def get_book(self: "BookService") -> list[GetBookCard]:
        return await self.repository.get_book()

    async def get_book_by_genre(self: "BookService", genre: str) -> list[GetBookCard]:
        return await self.repository.get_book_by_genre(genre=genre)

    async def get_book_by_id(self: "BookService", book_id: int) -> GetBook | None:
        return await self.repository.get_book_by_id(book_id=book_id)

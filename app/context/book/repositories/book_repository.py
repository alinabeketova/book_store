from sqlalchemy import func, select

from app.base.repositories.base_repository import BaseRepository
from app.context.author.models.author_model import AuthorModel
from app.context.book.models.book_model import BookModel
from app.context.book.schemas.book_schema import (
    BookDTO,
    CreateBookDTO,
    GetBook,
    GetBookCard,
    UpdateBookDTO,
    UpdatePartlyBookDTO,
)
from app.context.book_author.models.book_author_model import BookAuthorModel
from app.context.book_genre.models.book_genre_model import BookGenreModel
from app.context.genre.models.genre_model import GenreModel
from app.context.order.models.order_model import OrderModel
from app.context.order_item.models.order_item_model import OrderItemModel
from app.context.publisher.models.publisher_model import PublisherModel


class BookRepository(BaseRepository[CreateBookDTO, UpdateBookDTO | UpdatePartlyBookDTO, BookDTO]):
    dto = BookDTO
    model = BookModel
    order = OrderModel
    order_item = OrderItemModel
    book_author = BookAuthorModel
    author = AuthorModel
    book_genre = BookGenreModel
    genre = GenreModel
    publisher = PublisherModel

    async def get_book_in_order(self, order_number: str) -> list[GetBookCard]:
        return [
            GetBookCard(**book)
            for book in (
                (
                    await self._session.execute(
                        select(
                            self.model.id,
                            self.model.title,
                            self.model.description,
                            self.order_item.unit_price,
                            self.order_item.total_price,
                            self.author.full_name,
                        )
                        .select_from(self.order)
                        .join(self.order_item, self.order.id == self.order_item.order_id)
                        .join(self.model, self.model.id == self.order_item.book_id)
                        .join(self.book_author, self.book_author.book_id == self.model.id)
                        .join(self.author, self.author.id == self.book_author.author_id)
                        .where(self.order.order_number == order_number)
                    )
                )
                .mappings()
                .all()
            )
        ]

    async def get_book(self) -> list[GetBookCard]:
        return [
            GetBookCard(**book)
            for book in (
                (
                    await self._session.execute(
                        select(
                            self.model.id,
                            self.model.title,
                            self.model.description,
                            self.model.price.label("unit_price"),
                            self.author.full_name,
                        )
                        .select_from(self.model)
                        .join(self.book_author, self.book_author.book_id == self.model.id)
                        .join(self.author, self.author.id == self.book_author.author_id)
                    )
                )
                .mappings()
                .all()
            )
        ]

    async def get_book_by_genre(self, genre: str) -> list[GetBookCard]:
        return [
            GetBookCard(**book)
            for book in (
                (
                    await self._session.execute(
                        select(
                            self.model.id,
                            self.model.title,
                            self.model.description,
                            self.model.price.label("unit_price"),
                            self.author.full_name,
                        )
                        .select_from(self.model)
                        .join(self.book_author, self.book_author.book_id == self.model.id)
                        .join(self.author, self.author.id == self.book_author.author_id)
                        .join(self.book_genre, self.model.id == self.book_genre.book_id)
                        .join(self.genre, self.book_genre.genre_id == self.genre.id)
                        .where(self.genre.name == genre)
                    )
                )
                .mappings()
                .all()
            )
        ]

    async def get_book_by_id(self, book_id: int) -> GetBook | None:
        result = (
            (
                await self._session.execute(
                    select(
                        self.model.id,
                        self.model.isbn,
                        self.model.title,
                        self.model.description,
                        self.model.publication_year,
                        self.model.pages,
                        self.model.price,
                        self.model.discount,
                        self.model.quantity_in_stock,
                        self.model.min_quantity,
                        self.model.create_date,
                        self.publisher.name.label("publisher_name"),
                        self.publisher.email.label("publisher_email"),
                        func.string_agg(func.distinct(self.author.full_name), ", ").label("author"),
                        func.string_agg(func.distinct(self.genre.name), ", ").label("genre"),
                    )
                    .select_from(self.model)
                    .join(self.publisher, self.publisher.id == self.model.publisher_id)
                    .join(self.book_author, self.book_author.book_id == self.model.id)
                    .join(self.author, self.author.id == self.book_author.author_id)
                    .join(self.book_genre, self.model.id == self.book_genre.book_id)
                    .join(self.genre, self.book_genre.genre_id == self.genre.id)
                    .where(self.model.id == book_id)
                    .group_by(
                        self.model.id,
                        self.model.isbn,
                        self.model.title,
                        self.model.description,
                        self.model.publication_year,
                        self.model.pages,
                        self.model.price,
                        self.model.discount,
                        self.model.quantity_in_stock,
                        self.model.min_quantity,
                        self.model.create_date,
                        self.publisher.name,
                        self.publisher.email,
                    )
                )
            )
            .mappings()
            .first()
        )

        if result is None:
            return None

        return GetBook(**dict(result))

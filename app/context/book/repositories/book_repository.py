from app.base.repositories.base_repository import BaseRepository
from app.context.book.models.book_model import BookModel
from app.context.book.schemas.book_schema import BookDTO, CreateBookDTO, UpdateBookDTO, UpdatePartlyBookDTO


class BookRepository(BaseRepository[CreateBookDTO, UpdateBookDTO | UpdatePartlyBookDTO, BookDTO]):
    dto = BookDTO
    model = BookModel

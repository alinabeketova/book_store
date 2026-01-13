from app.base.repositories.base_repository import BaseRepository
from app.context.book_author.models.book_author_model import BookAuthorModel
from app.context.book_author.schemas.book_author_schema import BookAuthorDTO, CreateBookAuthorDTO, UpdateBookAuthorDTO


class BookAuthorRepository(BaseRepository[CreateBookAuthorDTO, UpdateBookAuthorDTO, BookAuthorDTO]):
    dto = BookAuthorDTO
    model = BookAuthorModel

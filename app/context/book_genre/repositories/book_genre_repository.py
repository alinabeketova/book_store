from app.base.repositories.base_repository import BaseRepository
from app.context.book_genre.models.book_genre_model import BookGenreModel
from app.context.book_genre.schemas.book_genre_schema import BookGenreDTO, CreateBookGenreDTO, UpdateBookGenreDTO


class BookGenreRepository(BaseRepository[CreateBookGenreDTO, UpdateBookGenreDTO, BookGenreDTO]):
    dto = BookGenreDTO
    model = BookGenreModel

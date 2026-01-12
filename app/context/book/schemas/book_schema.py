from decimal import Decimal

from app.base.schemas.base_schema import Base, BaseResponse


class BookDTO(Base):
    id: int
    isbn: str
    title: str
    description: str | None = None
    publication_year: int | None = None
    pages: int | None = None
    cover_type: str | None = None
    weight: float | None = None
    dimensions: str | None = None
    language: str | None = None
    publisher_id: int
    price: Decimal
    discount: Decimal | None = None
    quantity_in_stock: int
    min_quantity: int
    status_id: int
    create_date: int


class CreateBookDTO(Base):
    isbn: str
    title: str
    description: str | None = None
    publication_year: int | None = None
    pages: int | None = None
    cover_type: str | None = None
    weight: float | None = None
    dimensions: str | None = None
    language: str | None = None
    publisher_id: int
    price: Decimal
    discount: Decimal | None = None
    quantity_in_stock: int
    min_quantity: int
    status_id: int
    create_date: int


class UpdateBookDTO(Base):
    isbn: str
    title: str
    description: str | None = None
    publication_year: int | None = None
    pages: int | None = None
    cover_type: str | None = None
    weight: float | None = None
    dimensions: str | None = None
    language: str | None = None
    publisher_id: int
    price: Decimal
    discount: Decimal | None = None
    quantity_in_stock: int
    min_quantity: int
    status_id: int
    create_date: int


class UpdatePartlyBookDTO(Base):
    isbn: str
    title: str | None = None
    description: str | None = None
    publication_year: int | None = None
    pages: int | None = None
    cover_type: str | None = None
    weight: float | None = None
    dimensions: str | None = None
    language: str | None = None
    publisher_id: int | None = None
    price: Decimal | None = None
    discount: Decimal | None = None
    quantity_in_stock: int | None = None
    min_quantity: int | None = None
    status_id: int | None = None
    create_date: int | None = None


class BookResponse(BaseResponse):
    pass

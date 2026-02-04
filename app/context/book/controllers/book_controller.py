from fastapi import APIRouter, Depends

from app.auth.auth import JWTBearer
from app.context.book.dependencies.services import IBookService
from app.context.book.schemas.book_schema import GetBook, GetBookCard
from app.exception_handler import error_handler

router_book = APIRouter(tags=["book"])


@router_book.get("/book_order/{order_number:str}", summary="Get book in order", dependencies=[Depends(JWTBearer())])
@error_handler
async def get_book_in_order(service: IBookService, order_number: str) -> list[GetBookCard]:
    return await service.get_book_in_order(order_number=order_number)


@router_book.get("/book", summary="Get book")
@error_handler
async def get_book(service: IBookService) -> list[GetBookCard]:
    return await service.get_book()


@router_book.get("/book_genre/{genre:str}", summary="Get book by genre")
@error_handler
async def get_book_by_genre(service: IBookService, genre: str) -> list[GetBookCard]:
    return await service.get_book_by_genre(genre=genre)


@router_book.get("/book/{book_id:int}", summary="Get book by id")
@error_handler
async def get_book_by_id(service: IBookService, book_id: int) -> GetBook | None:
    return await service.get_book_by_id(book_id=book_id)

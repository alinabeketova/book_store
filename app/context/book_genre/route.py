from fastapi import APIRouter

from app.context.book_genre.controllers import book_genre_controller

book_genre_router = APIRouter()
book_genre_router.include_router(book_genre_controller.router_book_genre)

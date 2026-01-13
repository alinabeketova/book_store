from fastapi import APIRouter

from app.context.book_author.controllers import book_author_controller

book_author_router = APIRouter()
book_author_router.include_router(book_author_controller.router_book_author)

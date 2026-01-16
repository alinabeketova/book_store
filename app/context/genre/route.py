from fastapi import APIRouter

from app.context.genre.controllers import genre_controller

genre_router = APIRouter()
genre_router.include_router(genre_controller.router_genre)

from fastapi import APIRouter

from app.context.genre.dependencies.services import IGenreService
from app.context.genre.schemas.genre_schema import GenreDTO
from app.exception_handler import error_handler

router_genre = APIRouter(tags=["genre"])


@router_genre.get("/genre", summary="Get book")
@error_handler
async def get_genre(service: IGenreService) -> list[GenreDTO]:
    return await service.get_genre()

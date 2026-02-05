from fastapi import APIRouter

from app.context.author.dependencies.services import IAuthorService
from app.context.author.schemas.author_schema import AuthorDTO
from app.exception_handler import error_handler

router_author = APIRouter(tags=["author"])


@router_author.get("/author/{author_name:str}", summary="Get user by id")
@error_handler
async def get_author_by_name(service: IAuthorService, author_name: str) -> AuthorDTO:
    return await service.get_author_by_name(author_name=author_name)


@router_author.get("/author", summary="Get users")
@error_handler
async def get_author(service: IAuthorService) -> list[AuthorDTO]:
    return await service.get_author()

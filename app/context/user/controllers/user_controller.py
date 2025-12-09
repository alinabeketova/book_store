from fastapi import APIRouter, Depends

from app.auth.auth import JWTBearer
from app.auth.oauth_google import get_current_google_user
from app.context.user.dependencies.services import IUserService
from app.context.user.schemas.user_schema import (
    CreateUserDTO,
    UpdatePartlyUserDTO,
    UpdateUserDTO,
    UserDTO,
    UserResponse,
)
from app.exception_handler import error_handler

router_user = APIRouter(tags=["user"])


@router_user.get("/user/{user_id:int}", summary="Get user by id", dependencies=[Depends(get_current_google_user)])
@error_handler
async def get_user_by_id(service: IUserService, user_id: int) -> UserDTO:
    return await service.get_user_by_id(user_id=user_id)


@router_user.get("/user", summary="Get users", dependencies=[Depends(JWTBearer())])
@error_handler
async def get_user(service: IUserService) -> list[UserDTO]:
    return await service.get_user()


@router_user.post("/user", summary="Post user", dependencies=[Depends(JWTBearer())])
@error_handler
async def post_user(service: IUserService, data: CreateUserDTO = Depends()) -> UserResponse:
    return await service.post_user(data=data)


@router_user.delete("/user/{user_id:int}", summary="Delete user by id", dependencies=[Depends(JWTBearer())])
@error_handler
async def delete_user_by_id(service: IUserService, user_id: int) -> UserResponse:
    return await service.delete_user_by_id(user_id=user_id)


@router_user.put("/user", summary="Update user", dependencies=[Depends(JWTBearer())])
@error_handler
async def update_user(service: IUserService, data: UpdateUserDTO = Depends()) -> UserResponse:
    return await service.update_user(data=data)


@router_user.patch("/user", summary="Patch user", dependencies=[Depends(JWTBearer())])
@error_handler
async def update_partly_user(service: IUserService, data: UpdatePartlyUserDTO = Depends()) -> UserResponse:
    return await service.update_partly_user(data=data)


@router_user.get("/user_role", summary="Get user by count role", dependencies=[Depends(JWTBearer())])
@error_handler
async def get_user_by_count_role(service: IUserService, count: int) -> list[UserDTO]:
    return await service.get_user_by_count_role(count=count)

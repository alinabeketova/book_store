from fastapi import APIRouter, Depends

from app.context.user_role.dependencies.services import IUserRoleService
from app.context.user_role.schemas.user_role_schema import CreateUserRoleDTO, UserRoleDTO, UserRoleResponse
from app.exception_handler import error_handler

router_user_role = APIRouter(tags=["user_role"])


@router_user_role.get("/user_role_by_user_id/{user_id:int}", summary="Get user_role by user_id")
@error_handler
async def get_user_role_by_user_id(service: IUserRoleService, user_id: int) -> list[UserRoleDTO]:
    return await service.get_user_role_by_user_id(user_id=user_id)


@router_user_role.get("/user_role_by_role_id/{role_id:int}", summary="Get user_role by role_id")
@error_handler
async def get_user_role_by_role_id(service: IUserRoleService, role_id: int) -> list[UserRoleDTO]:
    return await service.get_user_role_by_role_id(role_id=role_id)


@router_user_role.post("/user_role", summary="Post user_role")
@error_handler
async def post_user_role(service: IUserRoleService, data: CreateUserRoleDTO = Depends()) -> UserRoleResponse:
    return await service.post_user_role(data=data)


@router_user_role.delete("/user_role/{user_id:int}", summary="Delete user_role by id")
@error_handler
async def delete_user_role_by_id(service: IUserRoleService, user_id: int, role_id: int) -> UserRoleResponse:
    return await service.delete_user_role_by_id(user_id=user_id, role_id=role_id)

from fastapi import APIRouter, Depends

from app.context.role.dependencies.services import IRoleService
from app.context.role.schemas.role_schema import CreateRoleDTO, RoleDTO, RoleResponse, UpdateRoleDTO
from app.exception_handler import error_handler

router_role = APIRouter(tags=["role"])


@router_role.get("/role", summary="Get roles")
@error_handler
async def get_role(service: IRoleService) -> list[RoleDTO]:
    return await service.get_role()


@router_role.post("/role", summary="Post role")
@error_handler
async def post_role(service: IRoleService, data: CreateRoleDTO = Depends()) -> RoleResponse:
    return await service.post_role(data=data)


@router_role.put("/role", summary="Update role")
@error_handler
async def update_role(service: IRoleService, data: UpdateRoleDTO = Depends()) -> RoleResponse:
    return await service.update_role(data=data)

from fastapi import HTTPException

from app.context.role.dependencies.repositories import IRoleRepository
from app.context.role.schemas.role_schema import CreateRoleDTO, RoleDTO, RoleResponse, UpdateRoleDTO


class RoleService:
    def __init__(self: "RoleService", repository: IRoleRepository) -> None:
        self.repository = repository

    async def get_role(self: "RoleService") -> list[RoleDTO]:
        return await self.repository.get_multi()

    async def post_role(self: "RoleService", data: CreateRoleDTO) -> RoleResponse:
        role_exist = await self.repository.check_exists(name=data.name)
        if role_exist:
            raise HTTPException(409, "Роль с таким названием уже существует")
        await self.repository.create(data)
        return RoleResponse(message="Роль создана")

    async def update_role(self: "RoleService", data: UpdateRoleDTO) -> RoleResponse:
        role_exist = await self.repository.check_exists(name=data.name)
        if not role_exist:
            raise HTTPException(404, "Роли с таким названием не существует")
        await self.repository.update(data, name=data.name)
        return RoleResponse(message="Роль обновлена")

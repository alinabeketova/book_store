from fastapi import HTTPException

from app.context.user_role.dependencies.repositories import IUserRoleRepository
from app.context.user_role.schemas.user_role_schema import CreateUserRoleDTO, UserRoleDTO, UserRoleResponse


class UserRoleService:
    def __init__(self: "UserRoleService", repository: IUserRoleRepository) -> None:
        self.repository = repository

    async def get_user_role_by_user_id(self: "UserRoleService", user_id: int) -> list[UserRoleDTO]:
        return await self.repository.get_multi(user_id=user_id)

    async def get_user_role_by_role_id(self: "UserRoleService", role_id: int) -> list[UserRoleDTO]:
        return await self.repository.get_multi(role_id=role_id)

    async def post_user_role(self: "UserRoleService", data: CreateUserRoleDTO) -> UserRoleResponse:
        user_role_exist = await self.repository.check_exists(user_id=data.user_id, role_id=data.role_id)
        if user_role_exist:
            raise HTTPException(409, "У этого пользователя уже задана эта роль")
        await self.repository.create(data)
        return UserRoleResponse(message="Потльзователю задана новая роль")

    async def delete_user_role_by_id(self: "UserRoleService", user_id: int, role_id: int) -> UserRoleResponse:
        await self.repository.delete(user_id=user_id, role_id=role_id)
        return UserRoleResponse(message="Пользователь удален")

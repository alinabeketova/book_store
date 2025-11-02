from app.base.repositories.base_repository import BaseRepository
from app.context.user_role.models.user_role_model import UserRoleModel
from app.context.user_role.schemas.user_role_schema import CreateUserRoleDTO, UpdateUserRoleDTO, UserRoleDTO


class UserRoleRepository(BaseRepository[CreateUserRoleDTO, UpdateUserRoleDTO, UserRoleDTO]):
    dto = UserRoleDTO
    model = UserRoleModel

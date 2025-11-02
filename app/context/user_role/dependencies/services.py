from typing import Annotated

from fastapi import Depends

from app.context.user_role.services.user_role_service import UserRoleService

IUserRoleService = Annotated[UserRoleService, Depends()]

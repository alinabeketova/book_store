from typing import Annotated

from fastapi import Depends

from app.context.user_role.repositories.user_role_repository import UserRoleRepository

IUserRoleRepository = Annotated[UserRoleRepository, Depends()]

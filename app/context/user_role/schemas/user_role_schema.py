from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class UserRoleDTO(Base):
    id: int
    user_id: int
    role_id: int
    create_date: datetime


class CreateUserRoleDTO(Base):
    user_id: int
    role_id: int
    create_date: datetime


class UpdateUserRoleDTO(Base):
    user_id: int
    role_id: int
    create_date: datetime


class UserRoleResponse(BaseResponse):
    pass

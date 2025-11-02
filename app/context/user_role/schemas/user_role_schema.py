from datetime import date

from app.base.schemas.base_schema import Base, BaseResponse


class UserRoleDTO(Base):
    id: int
    user_id: int
    role_id: int
    create_date: date


class CreateUserRoleDTO(Base):
    user_id: int
    role_id: int
    create_date: date


class UpdateUserRoleDTO(Base):
    user_id: int
    role_id: int
    create_date: date


class UserRoleResponse(BaseResponse):
    pass

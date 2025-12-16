from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class RoleDTO(Base):
    id: int
    name: str
    note: str | None = None
    status_id: int
    create_date: datetime


class CreateRoleDTO(Base):
    name: str
    note: str | None = None
    status_id: int
    create_date: datetime


class UpdateRoleDTO(Base):
    name: str
    note: str | None = None
    status_id: int
    create_date: datetime


class RoleResponse(BaseResponse):
    pass

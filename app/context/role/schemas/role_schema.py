from datetime import date

from app.base.schemas.base_schema import Base, BaseResponse


class RoleDTO(Base):
    id: int
    name: str
    note: str | None = None
    status_id: int
    create_date: date


class CreateRoleDTO(Base):
    name: str
    note: str | None = None
    status_id: int
    create_date: date


class UpdateRoleDTO(Base):
    name: str
    note: str | None = None
    status_id: int
    create_date: date


class RoleResponse(BaseResponse):
    pass

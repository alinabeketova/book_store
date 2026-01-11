from datetime import date, datetime

from app.base.schemas.base_schema import Base, BaseResponse


class AuthorDTO(Base):
    id: int
    full_name: str
    biography: str | None = None
    birth_date: date | None = None
    death_date: date | None = None
    status_id: int
    create_date: datetime


class CreateAuthorDTO(Base):
    full_name: str
    biography: str | None = None
    birth_date: date | None = None
    death_date: date | None = None
    status_id: int
    create_date: datetime


class UpdateAuthorDTO(Base):
    full_name: str
    biography: str | None = None
    birth_date: date | None = None
    death_date: date | None = None
    status_id: int
    create_date: datetime


class UpdatePartlyAuthorDTO(Base):
    full_name: str
    biography: str | None = None
    birth_date: date | None = None
    death_date: date | None = None
    status_id: int | None = None
    create_date: datetime | None = None


class AuthorResponse(BaseResponse):
    pass

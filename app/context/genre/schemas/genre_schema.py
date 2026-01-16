from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class GenreDTO(Base):
    id: int
    name: str
    description: str | None = None
    status_id: int
    create_date: datetime


class CreateGenreDTO(Base):
    name: str
    description: str | None = None
    status_id: int
    create_date: datetime


class UpdateGenreDTO(Base):
    name: str
    description: str | None = None
    status_id: int
    create_date: datetime


class GenreResponse(BaseResponse):
    pass

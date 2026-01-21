from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class PublisherDTO(Base):
    id: int
    name: str
    address: str | None = None
    phone: str | None = None
    email: str | None = None
    website: str | None = None
    status_id: int
    create_date: datetime


class CreatePublisherDTO(Base):
    name: str
    address: str | None = None
    phone: str | None = None
    email: str | None = None
    website: str | None = None
    status_id: int
    create_date: datetime


class UpdatePublisherDTO(Base):
    name: str
    address: str | None = None
    phone: str | None = None
    email: str | None = None
    website: str | None = None
    status_id: int
    create_date: datetime


class PublisherResponse(BaseResponse):
    pass

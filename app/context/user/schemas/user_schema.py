from datetime import date

from app.base.schemas.base_schema import Base, BaseResponse


class UserDTO(Base):
    id: int
    first_name: str
    middle_name: str | None = None
    last_name: str
    date_of_birth: date
    address: str | None = None
    email: str | None = None
    passport_number: str
    password: str


class CreateUserDTO(Base):
    first_name: str
    middle_name: str | None = None
    last_name: str
    date_of_birth: date
    address: str | None = None
    email: str | None = None
    passport_number: str
    password: str


class UpdateUserDTO(Base):
    first_name: str
    middle_name: str | None = None
    last_name: str
    date_of_birth: date
    address: str | None = None
    email: str | None = None
    passport_number: str
    password: str


class UpdatePartlyUserDTO(Base):
    first_name: str | None = None
    middle_name: str | None = None
    last_name: str | None = None
    date_of_birth: date | None = None
    address: str | None = None
    email: str
    passport_number: str | None = None
    password: str


class UserResponse(BaseResponse):
    pass

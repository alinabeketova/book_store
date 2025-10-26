from app.base.schemas.base_schema import Base, BaseResponse


class LoginDTO(Base):
    pass


class CreateLoginDTO(Base):
    user: str
    password: str


class UpdateLoginDTO(Base):
    pass


class LoginResponse(BaseResponse):
    pass


class LoginRequestDTO(Base):
    email: str
    password: str


class LoginResponseDTO(Base):
    token: str

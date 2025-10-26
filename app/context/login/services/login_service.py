from fastapi import HTTPException

from app.auth.utils import create_access_token
from app.base.utils.password_utils import get_hashed_password
from app.context.login.dependencies.repositories import ILoginRepository
from app.context.login.schemas.login_schema import LoginRequestDTO, LoginResponseDTO


class LoginService:
    def __init__(self: "LoginService", repository: ILoginRepository) -> None:
        self.repository = repository

    async def login(self: "LoginService", data: LoginRequestDTO) -> LoginResponseDTO:
        hashed_password = get_hashed_password(data.password)
        data = LoginRequestDTO(**data.model_dump(exclude={"password"}), password=hashed_password)

        user_id = await self.repository.get_user_id_by_email_and_password(data)

        if not user_id:
            HTTPException(status_code=404, detail="Неверный email или пароль")

        return LoginResponseDTO(token=create_access_token(data.email))

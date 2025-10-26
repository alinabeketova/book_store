from sqlalchemy import select

from app.base.repositories.base_repository import BaseRepository
from app.context.login.schemas.login_schema import CreateLoginDTO, LoginDTO, LoginRequestDTO, UpdateLoginDTO
from app.context.user.models.user_model import UserModel


class LoginRepository(BaseRepository[CreateLoginDTO, UpdateLoginDTO, LoginDTO]):
    dto = LoginDTO
    user_model = UserModel

    async def get_user_id_by_email_and_password(self, data: LoginRequestDTO) -> int | None:
        return (
            await self._session.execute(
                select(self.user_model.id)
                .where(self.user_model.email == data.email)
                .where(self.user_model.password == data.password)
            )
        ).scalar_one_or_none()

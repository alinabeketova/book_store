from sqlalchemy import func, select

from app.base.repositories.base_repository import BaseRepository
from app.context.user.models.user_model import UserModel
from app.context.user.schemas.user_schema import CreateUserDTO, UpdatePartlyUserDTO, UpdateUserDTO, UserDTO
from app.context.user_role.models.user_role_model import UserRoleModel


class UserRepository(BaseRepository[CreateUserDTO, UpdateUserDTO | UpdatePartlyUserDTO, UserDTO]):
    dto = UserDTO
    model = UserModel
    user_role = UserRoleModel

    async def get_user_by_count_role(self, count: int) -> list[UserDTO]:
        return [
            UserDTO(**user)
            for user in (
                (
                    await self._session.execute(
                        select(
                            self.model.id,
                            self.model.first_name,
                            self.model.middle_name,
                            self.model.last_name,
                            self.model.date_of_birth,
                            self.model.address,
                            self.model.email,
                            self.model.passport_number,
                            self.model.password,
                        )
                        .select_from(self.model)
                        .join(self.user_role, self.user_role.user_id == self.model.id)
                        .group_by(
                            self.model.id,
                        )
                        .having(func.count(self.user_role.user_id) == count)
                    )
                )
                .mappings()
                .all()
            )
        ]

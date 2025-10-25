from app.base.repositories.base_repository import BaseRepository
from app.context.user.models.user_model import UserModel
from app.context.user.schemas.user_schema import CreateUserDTO, UpdatePartlyUserDTO, UpdateUserDTO, UserDTO


class UserRepository(BaseRepository[CreateUserDTO, UpdateUserDTO | UpdatePartlyUserDTO, UserDTO]):
    dto = UserDTO
    model = UserModel

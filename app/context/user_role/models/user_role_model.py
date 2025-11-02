from datetime import date

from sqlalchemy import Date, ForeignKey
from sqlalchemy.orm import Mapped, mapped_column

from app.base.models.base_model import Base
from app.context.role.models.role_model import RoleModel
from app.context.user.models.user_model import UserModel


class UserRoleModel(Base):
    __tablename__ = "user_role"

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True, index=True)
    user_id: Mapped[int] = mapped_column(ForeignKey(UserModel.id), nullable=False)
    role_id: Mapped[int] = mapped_column(ForeignKey(RoleModel.id), nullable=False)
    create_date: Mapped[date] = mapped_column(Date, nullable=False)

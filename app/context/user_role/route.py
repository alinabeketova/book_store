from fastapi import APIRouter

from app.context.user_role.controllers import user_role_controller

user_role_router = APIRouter()
user_role_router.include_router(user_role_controller.router_user_role)

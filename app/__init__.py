from fastapi import APIRouter

from app.context.login.route import login_router
from app.context.role.route import role_router
from app.context.user.route import user_router
from app.context.user_role.route import user_role_router

router = APIRouter()

router.include_router(login_router)
router.include_router(user_router)
router.include_router(role_router)
router.include_router(user_role_router)

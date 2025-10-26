from fastapi import APIRouter

from app.context.login.route import login_router
from app.context.user.route import user_router

router = APIRouter()

router.include_router(login_router)
router.include_router(user_router)

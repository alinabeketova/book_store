from fastapi import APIRouter

from app.context.user.route import user_router

router = APIRouter()

router.include_router(user_router)

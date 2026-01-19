from fastapi import APIRouter

from app.context.promo_code.controllers import promo_code_controller

promo_code_router = APIRouter()
promo_code_router.include_router(promo_code_controller.router_promo_code)

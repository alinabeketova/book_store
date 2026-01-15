from fastapi import APIRouter

from app.context.cart.controllers import cart_controller

cart_router = APIRouter()
cart_router.include_router(cart_controller.router_cart)

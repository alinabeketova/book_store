from fastapi import APIRouter

from app.context.order.controllers import order_controller

order_router = APIRouter()
order_router.include_router(order_controller.router_order)

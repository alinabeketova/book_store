from fastapi import APIRouter

from app.context.order_item.controllers import order_item_controller

order_item_router = APIRouter()
order_item_router.include_router(order_item_controller.router_order_item)

from fastapi import APIRouter

from app.context.publisher.controllers import publisher_controller

publisher_router = APIRouter()
publisher_router.include_router(publisher_controller.router_publisher)

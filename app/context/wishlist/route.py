from fastapi import APIRouter

from app.context.wishlist.controllers import wishlist_controller

wishlist_router = APIRouter()
wishlist_router.include_router(wishlist_controller.router_wishlist)

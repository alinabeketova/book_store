from fastapi import APIRouter

from app.context.review.controllers import review_controller

review_router = APIRouter()
review_router.include_router(review_controller.router_review)

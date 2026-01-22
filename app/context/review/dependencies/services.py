from typing import Annotated

from fastapi import Depends

from app.context.review.services.review_service import ReviewService

IReviewService = Annotated[ReviewService, Depends()]

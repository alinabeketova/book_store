from typing import Annotated

from fastapi import Depends

from app.context.review.repositories.review_repository import ReviewRepository

IReviewRepository = Annotated[ReviewRepository, Depends()]

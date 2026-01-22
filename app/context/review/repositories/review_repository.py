from app.base.repositories.base_repository import BaseRepository
from app.context.review.models.review_model import ReviewModel
from app.context.review.schemas.review_schema import CreateReviewDTO, ReviewDTO, UpdateReviewDTO


class ReviewRepository(BaseRepository[CreateReviewDTO, UpdateReviewDTO, ReviewDTO]):
    dto = ReviewDTO
    model = ReviewModel

from app.context.review.dependencies.repositories import IReviewRepository


class ReviewService:
    def __init__(self: "ReviewService", repository: IReviewRepository) -> None:
        self.repository = repository

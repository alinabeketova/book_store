from datetime import datetime

from app.base.schemas.base_schema import Base, BaseResponse


class ReviewDTO(Base):
    id: int
    user_id: int
    book_id: int
    rating: int
    comment: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime


class CreateReviewDTO(Base):
    user_id: int
    book_id: int
    rating: int
    comment: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime


class UpdateReviewDTO(Base):
    user_id: int
    book_id: int
    rating: int
    comment: str | None = None
    status_id: int
    create_date: datetime
    update_date: datetime


class PublisherResponse(BaseResponse):
    pass

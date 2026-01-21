from app.base.repositories.base_repository import BaseRepository
from app.context.publisher.models.publisher_model import PublisherModel
from app.context.publisher.schemas.publisher_schema import CreatePublisherDTO, PublisherDTO, UpdatePublisherDTO


class PublisherRepository(BaseRepository[CreatePublisherDTO, UpdatePublisherDTO, PublisherDTO]):
    dto = PublisherDTO
    model = PublisherModel

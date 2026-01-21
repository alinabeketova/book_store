from app.context.publisher.dependencies.repositories import IPublisherRepository


class PublisherService:
    def __init__(self: "PublisherService", repository: IPublisherRepository) -> None:
        self.repository = repository

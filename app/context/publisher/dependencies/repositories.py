from typing import Annotated

from fastapi import Depends

from app.context.publisher.repositories.publisher_repository import PublisherRepository

IPublisherRepository = Annotated[PublisherRepository, Depends()]

from typing import Annotated

from fastapi import Depends

from app.context.order_item.repositories.order_item_repository import OrderItemRepository

IOrderItemRepository = Annotated[OrderItemRepository, Depends()]

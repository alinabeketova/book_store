from typing import Annotated

from fastapi import Depends

from app.context.order_item.services.order_item_service import OrderItemService

IOrderItemService = Annotated[OrderItemService, Depends()]

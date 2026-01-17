from typing import Annotated

from fastapi import Depends

from app.context.order.services.order_service import OrderService

IOrderService = Annotated[OrderService, Depends()]

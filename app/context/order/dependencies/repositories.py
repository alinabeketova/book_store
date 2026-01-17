from typing import Annotated

from fastapi import Depends

from app.context.order.repositories.order_repository import OrderRepository

IOrderRepository = Annotated[OrderRepository, Depends()]

from typing import Annotated

from fastapi import Depends

from app.context.promo_code.repositories.promo_code_repository import PromoCodeRepository

IPromoCodeRepository = Annotated[PromoCodeRepository, Depends()]

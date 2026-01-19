from typing import Annotated

from fastapi import Depends

from app.context.promo_code.services.promo_code_service import PromoCodeService

IPromoCodeService = Annotated[PromoCodeService, Depends()]

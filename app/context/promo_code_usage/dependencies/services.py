from typing import Annotated

from fastapi import Depends

from app.context.promo_code_usage.services.promo_code_usage_service import PromoCodeUsageService

IPromoCodeUsageService = Annotated[PromoCodeUsageService, Depends()]

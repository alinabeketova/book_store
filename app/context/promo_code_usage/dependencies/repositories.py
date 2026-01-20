from typing import Annotated

from fastapi import Depends

from app.context.promo_code_usage.repositories.promo_code_usage_repository import PromoCodeUsageRepository

IPromoCodeUsageRepository = Annotated[PromoCodeUsageRepository, Depends()]

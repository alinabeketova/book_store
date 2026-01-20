from app.base.repositories.base_repository import BaseRepository
from app.context.promo_code_usage.models.promo_code_usage_model import PromoCodeUsageModel
from app.context.promo_code_usage.schemas.promo_code_usage_schema import (
    CreatePromoCodeUsageDTO,
    PromoCodeUsageDTO,
    UpdatePromoCodeUsageDTO,
)


class PromoCodeUsageRepository(BaseRepository[CreatePromoCodeUsageDTO, UpdatePromoCodeUsageDTO, PromoCodeUsageDTO]):
    dto = PromoCodeUsageDTO
    model = PromoCodeUsageModel

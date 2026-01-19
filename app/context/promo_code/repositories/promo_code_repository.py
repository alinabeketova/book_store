from app.base.repositories.base_repository import BaseRepository
from app.context.promo_code.models.promo_code_model import PromoCodeModel
from app.context.promo_code.schemas.promo_code_schema import CreatePromoCodeDTO, PromoCodeDTO, UpdatePromoCodeDTO


class PromoCodeRepository(BaseRepository[CreatePromoCodeDTO, UpdatePromoCodeDTO, PromoCodeDTO]):
    dto = PromoCodeDTO
    model = PromoCodeModel

from app.context.promo_code.dependencies.repositories import IPromoCodeRepository


class PromoCodeService:
    def __init__(self: "PromoCodeService", repository: IPromoCodeRepository) -> None:
        self.repository = repository

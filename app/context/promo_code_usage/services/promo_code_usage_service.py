from app.context.promo_code_usage.dependencies.repositories import IPromoCodeUsageRepository


class PromoCodeUsageService:
    def __init__(self: "PromoCodeUsageService", repository: IPromoCodeUsageRepository) -> None:
        self.repository = repository

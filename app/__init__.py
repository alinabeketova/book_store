from fastapi import APIRouter

from app.context.author.route import author_router
from app.context.book.route import book_router
from app.context.book_author.route import book_author_router
from app.context.book_genre.route import book_genre_router
from app.context.cart.route import cart_router
from app.context.genre.route import genre_router
from app.context.login.route import login_router
from app.context.order.route import order_router
from app.context.order_item.route import order_item_router
from app.context.promo_code.route import promo_code_router
from app.context.promo_code_usage.route import promo_code_usage_router
from app.context.publisher.route import publisher_router
from app.context.review.route import review_router
from app.context.role.route import role_router
from app.context.user.route import user_router
from app.context.user_role.route import user_role_router
from app.context.wishlist.route import wishlist_router

router = APIRouter()

router.include_router(login_router)
router.include_router(user_router)
router.include_router(role_router)
router.include_router(user_role_router)
router.include_router(author_router)
router.include_router(book_router)
router.include_router(book_author_router)
router.include_router(book_genre_router)
router.include_router(cart_router)
router.include_router(genre_router)
router.include_router(order_router)
router.include_router(order_item_router)
router.include_router(promo_code_router)
router.include_router(promo_code_usage_router)
router.include_router(publisher_router)
router.include_router(review_router)
router.include_router(wishlist_router)

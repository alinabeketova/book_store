import os
import pathlib
from functools import lru_cache

from dotenv import load_dotenv
from pydantic import Field, ValidationError
from pydantic_settings import BaseSettings

load_dotenv()


class Settings(BaseSettings):
    port_local: int = Field(int(os.getenv("PORT_LOCAL")), validate_default=False)
    port_docker: int = Field(int(os.getenv("PORT_DOCKER")), validate_default=False)
    db_name: str = Field(os.getenv("DB_NAME"), validate_default=False)
    db_login: str = Field(os.getenv("DB_LOGIN"), validate_default=False)
    db_pass: str = Field(os.getenv("DB_PASS"), validate_default=False)
    db_ip_local: str = Field(os.getenv("DB_IP_LOCAL"), validate_default=False)
    db_ip_docker: str = Field(os.getenv("DB_IP_DOCKER"), validate_default=False)
    db_port_local: int = Field(int(os.getenv("DB_PORT_LOCAL")), validate_default=False)
    db_port_docker: int = Field(int(os.getenv("DB_PORT_DOCKER")), validate_default=False)
    db_url: str = Field(os.getenv("DB_URL"), validate_default=False)
    db_url_async: str = Field(os.getenv("DB_URL_ASYNC"), validate_default=False)
    workers: int = Field(int(os.getenv("WORKERS")), validate_default=False)

@lru_cache
def get_settings() -> Settings:
    try:
        return Settings(f"{pathlib.Path(__file__).resolve().parent}.env")
    except ValidationError:
        # print(f"path: {pathlib.Path(__file__).resolve().parent}")
        return Settings(f"{pathlib.Path(__file__).resolve().parent}/.env")

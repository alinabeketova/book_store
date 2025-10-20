import os

import uvicorn
from fastapi import FastAPI

from settings.settings import get_settings

settings = get_settings()

app = FastAPI()


@app.get("/")
def read_root() -> dict:
    return {"Hello": "World"}


if __name__ == "__main__":
    port = settings.port_local if os.name == "nt" else settings.port_docker
    uvicorn.run("main:app", port=port, host="0.0.0.0", reload=True)

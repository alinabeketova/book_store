import os

import uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root() -> dict:
    return {"Hello": "World"}


if __name__ == "__main__":
    port = 8001 if os.name == "nt" else 8000
    uvicorn.run("main:app", port=port, host="0.0.0.0", reload=True)

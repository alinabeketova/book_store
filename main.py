import uvicorn
from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
  return {"Hello": "World"}


if __name__ == "__main__":
    import uvicorn

    if "PORT" in os.environ:
        port = int(os.getenv("PORT"))
    elif os.name == 'nt':
        port = 8001
    else:
        port = 8000

    uvicorn.run("main:app", port=port, host="127.0.0.1", reload=True)
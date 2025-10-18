import uvicorn
from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
  return {"Hello": "World"}


if __name__ == "__main__":
    if os.name == 'nt':
        port = 8001
    else:
        port = 8000

    uvicorn.run("main:app", port=port, host="0.0.0.0", reload=True)
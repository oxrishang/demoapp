from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

import uvicorn


if __name__ == "__main__":
    uvicorn.run(host="0.0.0.0", port=8000, log_level="info")

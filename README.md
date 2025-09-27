# Flask + Docker + ngrok (Docker Desktop extension) — Minimal Starter

## 1) Build & run with Docker
```bash
docker compose up --build -d
# or (without compose)
# docker build -t flask-demo .
# docker run --name flask-demo -p 5000:5000 -d flask-demo
```
Test locally: http://localhost:5000  (health: http://localhost:5000/health)

## 2) Expose with Docker Desktop's ngrok extension
- Open **Docker Desktop → Extensions → ngrok**.
- You should now see the running container `flask-demo` with a published port 5000.
- Click **Create Endpoint** (or **Expose**) and select port **5000**.
- Copy the ngrok URL and open it in your browser — it will proxy to the container.

> If the extension says *"No containers with ports"* make sure the container is **running** and the port is **published** (`-p 5000:5000`) as above, then refresh the ngrok page.

## 3) Expose using the ngrok CLI (alternative)
```bash
# If Docker is running on Windows/Mac:
ngrok http http://localhost:5000
# If you run ngrok **inside a container**, point it at http://host.docker.internal:5000
```

## 4) Stop / clean up
```bash
docker compose down
# or
docker rm -f flask-demo
```
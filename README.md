# rust-docker-web

Example of packaging a Rust web application using Docker, providing an example for using Alpine and one for Debian.

Create Alpine using

```bash
make alpine
docker run -p 8000:8000 rust-alpine
curl http://localhost:8000/health
```

Create and Run Debian using
```bash
make debian
docker run -p 8000:8000 rust-debian
curl http://localhost:8000/health
```

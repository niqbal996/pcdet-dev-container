# Build container 
```bash
sudo -H DOCKER_BUILDKIT=1 docker build -f docker/Dockerfile --platform linux/amd64 -t niqbal996/pcdet-dev .
```
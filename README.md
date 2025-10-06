# DevOps Internship Assessment
Containerize and deploy a Next.js app using Docker, GitHub Actions, and Minikube.

## Prerequisites
- Git
- Docker
- Node.js
- Minikube & kubectl
- GitHub account

## Local run
```bash
npm ci
npm run dev
# or build and run Docker
docker build -t nextjs-app .
docker run -p 3000:3000 nextjs-app
```

## GitHub Actions
Workflow builds and pushes image to GHCR on every push to `main`.

## Kubernetes Deployment
```bash
minikube start --driver=docker
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
minikube service nextjs-service --url
```

Replace `YOUR-GITHUB-USERNAME` in deployment.yaml with your actual username.

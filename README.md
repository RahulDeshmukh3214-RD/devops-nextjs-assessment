# DevOps Internship Assessment
Containerize and deploy a Next.js app using Docker, GitHub Actions, and Minikube.

## Objective

This project demonstrates:

Containerizing a Next.js app using Docker

Automating image build and push using GitHub Actions and GitHub Container Registry (GHCR)

Deploying the containerized app to Kubernetes (Minikube) using manifests

## Prerequisites
- Git
- Docker
- Node.js
- Minikube & kubectl
- GitHub account

## Local Setup & Run
Run Locally with Node.js
# Install dependencies
npm ci

# Run development server
npm run dev

Access the app at:
http://localhost:3000

# Run with Docker
# Build Docker image
docker build -t nextjs-app .

# Run container
docker run -p 3000:3000 nextjs-app


Access the app at:
http://localhost:3000

```

## Github Action
Workflow builds and pushes image to GHCR on every push to `main`.

## Kubernetes Deployment
```bash
minikube start --driver=docker
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
minikube service nextjs-service --url
```

## Repository Structure
.
├── Dockerfile
├── .github/workflows/ci-cd.yml
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── package.json
└── README.md


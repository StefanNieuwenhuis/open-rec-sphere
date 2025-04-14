# 🎯 OpenRecSphere - Realtime Recommender System

**A production-inspired portfolio project to build, monitor, and scale a real-time recommender system — starting locally, scaling to bare-metal Kubernetes.**

This project is intentionally structured to reflect the **real-world constraints and decisions** machine learning engineers face every day. We begin by developing **locally with Docker Compose**, because the homelab cluster isn’t available yet. But rather than view this as a blocker, we treat it as a learning opportunity.

## Why local-first?

The Kubernetes cluster isn't up yet — and that’s by design.

We want to build this system step-by-step and understand each part in isolation before deploying everything into a distributed environment. This mirrors how real-world systems evolve:

- Local development first
- Component-level testing and instrumentation
- Gradual migration to production-like infrastructure

By doing this:

- We **gain confidence in the architecture**
- We **build robust observability practices from day one**
- We **simulate production workflows locally**, so scaling up becomes a matter of deployment — not rework

## 🤔 Motivation & Learning goals

After years of working on large-scale recommendation pipelines at Tumblr, I wanted to rebuild the fundamentals in a hands-on, public way — from model training to serving to observability — and share the learning journey openly.

### Learning goals:

This project is not just about coding. It's about thinking like an ML systems engineer.

1. **API Design** — How do you expose a real-time recommender over HTTP?
2. **Caching & Retrieval** — How do you store and retrieve precomputed candidates with speed?
3. **Batch Processing** — What does data prep look like using PySpark?
4. **Monitoring** — What metrics matter? How do you collect them?
5. **Containerization** — How do you compose this into a working system?
6. **DevOps Readiness** — How do you go from "it works on my laptop" to "it works on a cluster"?

And eventually...

7. **Migration to Kubernetes** — How do you take a working local system and deploy it to a real cluster with production-like configs?



## 🗺️ Project Roadmap

- [x] Project initialized
- [ ] FastAPI recommendation endpoint
- [ ] Redis + embedding storage
- [ ] Prometheus + Grafana monitoring
- [ ] CTR simulation + A/B framework
- [ ] K8s deployment on Homelab
- [ ] Write-up and video walkthrough


## ⚙️ Tech Stack

### Core
- **FastAPI** – high-performance Python API
- **Redis / Faiss** – fast similarity search
- **PySpark** – candidate generation / batch prep
- **Docker** – containerized microservices

### Monitoring
- **Prometheus** – metrics collection
- **Grafana** – dashboards and observability
- **Locust** – load testing & traffic simulation

### Deployment
- **Docker Compose** locally
- **Prefect / Airflow** – orchestration
- **GitHub Actions** – CI/CD for testing & linting


## 🧱 Architecture Components

> [WIP] Start simple and scale later.

## 🏁 Goals

- Serve recommendations in <100ms
- Monitor API latency & CTR simulation
- Modular components for offline prep, online serving
- Simulated A/B testing for cold-start & feedback delay
- Self-hosted & cloud-native options

## ⚙️ Setup Instructions

   ```bash
   git clone https://github.com/stefannieuwenhuis/open-rec-sphere.git
   cd open-rec-sphere

   docker-compose up
   ```

## 📓 Blog Series

>[WIP] Posts are added while the project advances.


## 📚 Additional Resources
- **Project Wiki**: Detailed documentation, including system architecture, API references, and tutorials, can be found in the [Project Wiki](https://github.com/stefannieuwenhuis/open-rec-sphere/wiki).​
- **API Documentation**: Interactive API docs are available at `http://localhost:8000/docs` once the application is running.​
- **Docker Documentation**: Learn more about Docker and Docker Compose [here](https://docs.docker.com/).​
- **FastAPI Documentation**: Official FastAPI documentation is available [here](https://fastapi.tiangolo.com/).

## 🤝 Contributing
We welcome contributions from the community! To get started:​

1. Fork the repository.​
1. Create a new branch: `git checkout -b feature/your-feature-name`.​
1. Make your changes and commit them: `git commit -m 'Add your message here'`.​
1. Push to the branch: `git push origin feature/your-feature-name`.​
1. Open a [pull request](https://github.com/StefanNieuwenhuis/open-rec-sphere/compare).​

Please read our [Contributing Guide](https://github.com/stefannieuwenhuis/CONTRIBUTING.md) for more details on our code of conduct, and the process for submitting pull requests.

## 📝 License
This project is licensed under the MIT License. See the [LICENSE](https://github.com/stefannieuwenhuis/LICENSE.md) file for details.

---

Happy coding! If you find this project helpful, please give it a star ⭐ and share it with others.
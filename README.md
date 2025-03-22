# 🧱 WordPress Headless + Astro Skeleton

This repository provides a ready-to-use Dockerized skeleton for projects that combine a **WordPress headless CMS** backend with an **Astro** frontend.  
Ideal for portfolios, blogs, landing pages, or any content-driven site powered by a decoupled architecture.

---

## 📦 Tech Stack

| Component     | Version    | Description                                 |
|---------------|------------|---------------------------------------------|
| WordPress     | latest     | Headless CMS via REST API                   |
| MySQL         | 5.7        | Database for WordPress                      |
| phpMyAdmin    | latest     | DB management interface (dev only)          |
| Astro         | 5.5.4      | Frontend framework for static/dynamic sites |
| Node.js       | 18         | Runtime used by Astro                       |

---

## ✅ Requirements

- Docker & Docker Compose installed
- Make (optional, for convenience)

---

## 🚀 Quick Start

1. **Clone this repo**:

   ```bash
   git clone https://github.com/your-user/wordpress-astro-skeleton.git
   cd wordpress-astro-skeleton
   ```

2. **Start all services**:

   ```bash
   make up
   ```

3. **Access the services**:

   - WordPress: [http://localhost:8000](http://localhost:8000)
   - phpMyAdmin: [http://localhost:8080](http://localhost:8080)  
     (Username: `root`, Password: `rootpass`)
   - Astro frontend: [http://localhost:4321](http://localhost:4321)

---

## ⚙️ Project Structure

```
.
├── astro-frontend/     # Astro app (frontend)
├── wp/                 # WordPress content & DB volumes
├── docker-compose.yml  # Docker orchestration
├── Makefile            # Helper commands
└── README.md
```

---

## 💠 Makefile Commands

| Command        | Description                         |
|----------------|-------------------------------------|
| `make up`      | Start all containers                |
| `make down`    | Stop all containers                 |
| `make logs`    | Show real-time logs                 |
| `make restart` | Restart containers                  |
| `make wp-shell`| Enter WordPress container shell     |
| `make astro-shell` | Enter Astro container shell     |

---

## 📁 Notes

- The Astro dev server is configured with `--host` so it’s accessible from the host and local network.
- `node_modules` for Astro is installed inside the container and managed via a mounted volume, ensuring platform compatibility (Linux vs macOS).
- `phpMyAdmin` is for dev/debug only and should be removed in production environments.

---

## 📌 Next Steps

This skeleton is a base — feel free to:

- Add custom post types (CPT) and ACF fields in WordPress.
- Fetch content from the WordPress REST API into Astro.
- Build your custom pages, routes, and components in Astro.

---

## 🗼 Clean Rebuild (if needed)

```bash
docker-compose down -v --remove-orphans
docker-compose build --no-cache
make up
```

---

## 📝 License

MIT — free to use and adapt.


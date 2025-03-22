# 🧱 WordPress Headless + Astro Skeleton

This repository provides a ready-to-use Dockerized skeleton for projects that combine a **WordPress headless CMS** backend with an **Astro** frontend.
Ideal for portfolios, blogs, landing pages, or any content-driven site powered by a decoupled architecture.

---

## 📦 Tech Stack

| Component     | Version    | Description                                 |
|---------------|------------|---------------------------------------------|
| WordPress     | latest     | Installed via Docker image                  |
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
├── astro-frontend/               # Astro app (frontend)
├── wp/
│   └── html/
│       └── wp-content/           # Versioned themes and plugins only
│           ├── themes/
│           └── plugins/
├── docker-compose.yml            # Docker orchestration
├── Makefile                      # Helper commands
└── README.md
```

---

## 💠 Makefile Commands

| Command            | Description                                           |
|--------------------|-------------------------------------------------------|
| `make up`          | Start all containers                                  |
| `make down`        | Stop all containers                                   |
| `make logs`        | Show real-time logs                                   |
| `make restart`     | Restart containers                                    |
| `make wp-shell`    | Enter WordPress container shell                       |
| `make astro-shell` | Enter Astro container shell                           |

---

## 📁 Notes & Conventions

- This project uses the **WordPress Docker image**. WordPress core is not tracked in Git.
- Only `wp-content/` (themes, plugins) is versioned. This allows full customization and portability.
- Database contents are stored in Docker volumes and **not versioned**.
- Astro's dev server is exposed via `--host` and available on your local network.

---

## 🔄 Reset / Troubleshooting

If you experience errors with WordPress or the database, it's likely due to leftover Docker volumes.
You can reset the entire environment with:

```bash
docker-compose down -v --remove-orphans
rm -rf wp/html wp/mysql
mkdir -p wp/html/wp-content/themes wp/html/wp-content/plugins
make up
```

---

## 🔄 Folder Strategy

| Folder                         | Tracked? | Purpose                                               |
|-------------------------------|----------|-------------------------------------------------------|
| `wp/html/wp-content/`         | ✅ Yes   | Your themes and plugins go here                      |
| `wp/html/wp-admin/`, etc.     | ❌ No    | WordPress core from the Docker image                 |
| `wp/mysql/`                   | ❌ No    | MySQL data directory (Docker volume)                 |

> WordPress is mounted via Docker and auto-installs on first run.
> You can customize `wp-content/` fully to control themes/plugins.

---

## 📌 Next Steps

This skeleton is a base — feel free to:

- Add custom post types (CPT) and ACF fields in WordPress.
- Fetch content from the WordPress REST API into Astro.
- Build your custom pages, routes, and components in Astro.
- Develop your own theme inside `wp-content/themes/`

---

## 🗼 Clean Rebuild (if needed)

```bash
docker-compose down -v --remove-orphans
rm -rf wp/html wp/mysql
mkdir -p wp/html/wp-content/themes wp/html/wp-content/plugins
make up
```

---

## 📍 License

MIT — free to use and adapt.


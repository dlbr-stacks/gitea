# Gitea

A dlbr stack package for [Gitea](https://gitea.io/) - a lightweight self-hosted Git service.

## Quick start

```bash
dlbr stack add gitea --registry dlbr --as gitea
dlbr stack bootstrap gitea
dlbr deployment deploy gitea
```

## Services

- **server**: Gitea server (rootless, port 3000 HTTP, 2222 SSH)
- **db**: PostgreSQL 16 database

## Configuration

### Bootstrap inputs

| Variable | Description | Default |
|----------|-------------|---------|
| `GITEA_DB_PASSWORD` | Database password | (generated) |
| `GITEA_ADMIN_PASSWORD` | Admin user password | (generated) |
| `GITEA_ADMIN_USER` | Admin username | `admin` |
| `GITEA_ADMIN_EMAIL` | Admin email | `admin@local` |

### Environment variables

| Variable | Description | Default |
|----------|-------------|---------|
| `GITEA_DOMAIN` | Server domain | `gitea.local` |

## State

- `state/data/` - Gitea data directory
- `state/config/` - Gitea configuration
- `state/db/` - PostgreSQL data

## Ports

- `3000` - HTTP web interface
- `2222` - SSH for git operations

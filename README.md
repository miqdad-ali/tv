# Media Box – Docker Stack

A self-hosted media automation setup.  
Includes media server, indexers, download clients, and remote access via Cloudflare Tunnel.

## Services

| Service        | Purpose                                     | Ports          |
|----------------|---------------------------------------------|----------------|
| Jellyfin       | Media server / streaming                    | 8096           |
| Radarr         | Movies automation                           | 7878           |
| Sonarr         | TV shows automation                         | 8989           |
| Jackett        | Indexer aggregator                          | 9117           |
| qBittorrent    | Torrent client                               | 6881 / 8080    |
| Cloudflared    | Secure remote access via Cloudflare Tunnel  | Host network   |

## Directory Structure

```
media-box/
├── docker-compose.yml
├── config/
│   ├── jellyfin/
│   ├── radarr/
│   ├── sonarr/
│   ├── jackett/
│   ├── qbittorrent/
│   └── cloudflare/config.yml
├── media/
└── downloads/
```

## Requirements

- Docker + Docker Compose
- Sufficient storage for media files
- Cloudflare Tunnel configured (optional but recommended for external access)

## How to Run

```bash
docker compose up -d
```

View logs:

```bash
docker compose logs -f
```

Stop everything:

```bash
docker compose down
```

## Notes

- Place media files under `./media`
- Download clients write to `./downloads`
- Access each service via browser using its port or through Cloudflare Tunnel if enabled



## Initial Setup

Run the setup script to generate all required folders, including separate media directories for movies and TV:

```bash
./setup.sh
```

This will create:

```
config/
  ├── jellyfin
  ├── radarr
  ├── sonarr
  ├── jackett
  ├── qbittorrent
  └── cloudflare     # unused if running without cloudflare
media/
  ├── movies/
  └── tv/
downloads/
```

After setup:

```bash
docker compose up -d
```


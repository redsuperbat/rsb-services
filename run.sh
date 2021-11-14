# Plex
REPO_PATH=~/Versioned/rsb-services

# if [ ! /plex ]; then
#   sudo mkdir -d /plex
# fi

# if [ ! -d /plex/movies ]; then
#   sudo mkdir /plex/movies
# fi

# if [ ! -d /plex/tv ]; then
#   sudo mkdir /plex/tv
# fi

# if [ ! -d /plex/config ]; then
#   sudo mkdir /plex/config
# fi

docker-compose up -f $REPO_PATH/plex/docker-compose.yaml -d

# Portainer
docker-compose up -f $REPO_PATH/portainer/docker-compose.yaml -d

# Nextcloud
docker-compose up -f $REPO_PATH/nextcloud/docker-compose.yaml -d

# Plex
REPO_PATH=~/Versioned/rsb-services

# if [ ! -d /plex ]; then
#   sudo mkdir /plex
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

docker-compose -f $REPO_PATH/plex/docker-compose.yaml up -d

# Portainer
docker-compose -f $REPO_PATH/portainer/docker-compose.yaml up -d

# Nextcloud
docker-compose -f $REPO_PATH/nextcloud/docker-compose.yaml up -d

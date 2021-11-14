# Plex

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

docker-compose run -d -f ./plex/docker-compose.yaml

# Portainer
docker-compose run -d -f ./portainer/docker-compose.yaml

# Nextcloud
docker-compose run -d -f ./nextcloud/docker-compose.yaml

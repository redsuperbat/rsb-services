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

if [ ! -f $REPO_PATH/nextcloud/postgres.env ] || [ ! -f $REPO_PATH/nextcloud/nextcloud.env ]; then
  echo "Postgres db username: "
  read PG_USER
  echo "Postgres db password: "
  read PG_PWD
  POSTGRES_USER="POSTGRES_USER=$PG_USER"
  POSTGRES_PASSWORD="POSTGRES_PASSWORD=$PG_PWD"
  echo $POSTGRES_PASSWORD >>$REPO_PATH/nextcloud/postgres.env
  echo $POSTGRES_USER >>$REPO_PATH/nextcloud/postgres.env
  echo $POSTGRES_PASSWORD >>$REPO_PATH/nextcloud/nextcloud.env
  echo $POSTGRES_USER >>$REPO_PATH/nextcloud/nextcloud.env
  echo "REDIS_HOST=redis" >>$REPO_PATH/nextcloud/nextcloud.env
  echo "POSTGRES_HOST=postgres" >>$REPO_PATH/nextcloud/nextcloud.env
  echo "POSTGRES_DB=nextcloud" >>$REPO_PATH/nextcloud/nextcloud.env
fi

# Nextcloud
docker-compose -f $REPO_PATH/nextcloud/docker-compose.yaml up -d

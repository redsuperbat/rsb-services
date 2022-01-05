REPO_PATH=~/Versioned/rsb-services

## Prompt user for passwords and usernames for the services
if [ ! -f $REPO_PATH/nextcloud/postgres.env ] || [ ! -f $REPO_PATH/nextcloud/nextcloud.env ]; then
  
  echo "Postgres db username: "
  read PG_USER
  echo "Postgres db password: "
  read PG_PWD
  
  POSTGRES_USER="POSTGRES_USER=$PG_USER"
  POSTGRES_PASSWORD="POSTGRES_PASSWORD=$PG_PWD"

  echo $POSTGRES_PASSWORD >>$REPO_PATH/postgres.env
  echo $POSTGRES_USER >>$REPO_PATH/postgres.env
  echo $POSTGRES_PASSWORD >>$REPO_PATH/nextcloud.env
  echo $POSTGRES_USER >>$REPO_PATH/nextcloud.env
  echo "REDIS_HOST=redis" >>$REPO_PATH/nextcloud.env
  echo "POSTGRES_HOST=postgres" >>$REPO_PATH/nextcloud.env
  echo "POSTGRES_DB=nextcloud" >>$REPO_PATH/nextcloud.env
fi
## Run the containers
docker-compose -f $REPO_PATH/docker-compose.yaml up -d

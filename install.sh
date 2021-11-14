REPO=docker-compose-rsb

# Fetch repo from github
if [ -d ~/Versioned/$REPO ]; then
  cd ~/Versioned/$REPO
  git pull
  cd ~
else
  git clone git@github.com:redsuperbat/${REPO}.git ~/Versioned/$REPO
fi

sh ~/Versioned/docker-compose-rsb/run.sh

REPO=rsb-services

# Fetch repo from github
if [ -d ~/Versioned/$REPO ]; then
  cd ~/Versioned/$REPO
  git pull
  cd ~
else
  git clone https://github.com/redsuperbat/$REPO.git ~/Versioned/$REPO
fi

sh ~/Versioned/$REPO/run.sh

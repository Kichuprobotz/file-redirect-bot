if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kichuprobotz/file-redirect-bot.git /file-redirect-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-redirect-bot
fi
cd /TovinoBotV3
pip3 install -U -r requirements.txt
echo "Starting file-redirect-bot...."
python3 bot.py

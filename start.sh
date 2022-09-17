if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/as6823917/Evaguleriabot.git /Evaguleriabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Evaguleriabot
fi
cd /Evaguleriabot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

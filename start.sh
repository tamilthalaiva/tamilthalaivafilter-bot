if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/tamilthalaiva/tamilthalaivafilter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tamilthalaivafilter-bot
fi
cd /file-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py

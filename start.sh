if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sohanraz/Auto-Filter-Bot-With-Shortner.git /Auto-Filter-Bot-With-Shortner
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-Bot-With-Shortner
fi
cd /Auto-Filter-Bot-With-Shortner
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

export INSTALLUSER=$1
source .tmp/_commonenv.sh

echo "running"

source /home/$USER/.tlcache/bem/$APPNAME/venv/bin/activate
$APPNAME

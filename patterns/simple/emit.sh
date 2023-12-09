export INSTALLUSER=$1
source .tmp/_commonenv.sh

echo "emitting"

if [ $USER == "vagrant" ]; then
  echo "skipping creating activate script"
else
  echo "creating activate script"
cat > activate.sh <<EOF
source .tmp/_env.sh
source /home/$USER/.tlcache/bem/$APPNAME/venv/bin/activate
EOF
fi

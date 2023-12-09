export INSTALLUSER=$1
source .tmp/_commonenv.sh

bash .tmp/bem/plugins/$PLUGIN/stages/setup_venv.sh $INSTALLUSER
bash .tmp/bem/plugins/$PLUGIN/stages/setup_venv_env.sh $INSTALLUSER
bash .tmp/bem/plugins/$PLUGIN/stages/setup_venv_app.sh $INSTALLUSER


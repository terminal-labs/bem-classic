export INSTALLUSER=$1
source .tmp/_commonenv.sh

bash .tmp/bem/common/hosts/standard/apt.sh

sudo su $INSTALLUSER <<'EOF'
  source .tmp/_commonenv.sh
  me="$(whoami)"
  bash .tmp/bem/plugins/$PLUGIN/install.sh $me
  bash .tmp/bem/plugins/$PLUGIN/emit.sh $me
EOF

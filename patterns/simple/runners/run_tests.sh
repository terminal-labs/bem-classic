source .tmp/_env.sh

if [[ -f ".repo/tests" ]];
then
  if jumper >/dev/null 2>&1; then
    jumper system version
    jumper system selftest
    jumper system selfcoverage
  else
    $APPNAME system version
    $APPNAME system selftest
    $APPNAME system selfcoverage
  fi
fi

BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadMobonAdapter.podspec --allow-warnings --skip-import-validation --synchronous

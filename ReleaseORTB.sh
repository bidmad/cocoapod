BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadORTBAdapter.podspec --allow-warnings --skip-import-validation --synchronous

BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadCoviAdapter.podspec --allow-warnings --skip-import-validation --synchronous

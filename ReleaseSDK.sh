BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadSDK.podspec --allow-warnings --skip-import-validation --synchronous

BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadFlutterBridge.podspec --allow-warnings --skip-import-validation --synchronous

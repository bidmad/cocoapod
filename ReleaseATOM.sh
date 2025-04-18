BASEDIR=$(dirname "$0")
pod trunk push $BASEDIR/BidmadAtomAdapter.podspec --allow-warnings --skip-import-validation --synchronous

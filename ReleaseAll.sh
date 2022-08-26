BASEDIR=$(dirname "$0")

pod trunk push $BASEDIR/ADOPUtility.podspec --allow-warnings --skip-import-validation
pod trunk push $BASEDIR/BidmadAdapterFC.podspec --allow-warnings --skip-import-validation

while [ $? != 0 ]
do
pod repo update
echo "Retrying in 5 minutes"
sleep 300
pod trunk push $BASEDIR/BidmadAdapterFC.podspec --allow-warnings --skip-import-validation
done

pod trunk push $BASEDIR/BidmadAdapterFNC.podspec --allow-warnings --skip-import-validation
pod trunk push $BASEDIR/BidmadSDK.podspec --allow-warnings --skip-import-validation
pod trunk push $BASEDIR/OpenBiddingHelper.podspec --allow-warnings --skip-import-validation

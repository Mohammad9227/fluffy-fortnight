#!/bin/bash
echo ""
echo "Creating Venv..."
virtualenv venv
source venv/bin/activate
echo ""
echo "Pip installing requirements..."
pip install -r bucket_mapping_tool/requirements.txt
echo ""
echo "running python ./bucket_mapping_tool/INFRA-1147.py " $BUCKET_TYPE $RESTAURANT_CODE $BUCKET_ID

python ./bucket_mapping_tool/INFRA-1147.py $BUCKET_TYPE $RESTAURANT_CODE $BUCKET_ID
echo ""
deactivate


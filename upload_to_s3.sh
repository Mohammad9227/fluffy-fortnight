#!/bin/bash
set -e
file=$test_config_yaml_1
pwd
cp test_config_yaml_1 my_test.yaml
cat my_test.yaml
ls
sudo rm -rf test_config_yaml_1
s3cmd --acl-public put my_test.yaml s3://auto-tester-configs-and-results/configs/$(date '+%Y-%m-%d__%H:%M:%S')/tester_config.yaml
echo "Uploaded yaml to S3"
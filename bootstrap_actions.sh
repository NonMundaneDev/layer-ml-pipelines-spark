#!/bin/bash

#### WARNING #####
## After modifying this script you have to push it on s3

# Non-standard and non-Amazon Machine Image Python modules:
#version=1.1

#printf "This is the latest script $version"

# #

#sudo python3 -m pip install --upgrade numpy
#sudo pip install -U setuptools

sudo easy_install numpy

sudo python3 -m pip install Cython pip

sudo python3 -m pip install boto3 pandas scikit-learn sagemaker matplotlib

wget -q https://s3-us-west-2.amazonaws.com/sparkml-mleap/0.9.6/jar/mleap_spark_assembly.jar -P /usr/lib/spark/jars/

sudo python3 -m pip install mleap


#sudo python3 -m pip install pyarrow==0.13.0

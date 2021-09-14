#!/bin/bash

#### WARNING #####
## After modifying this script you have to push it on s3

sudo python3 -m pip install Cython pip

sudo python3 -m pip install boto3 pandas scikit-learn sagemaker matplotlib

# Download the JAR (it is an assembly/fat JAR) file into the /usr/lib/spark/jars/ path for all nodes
wget -q https://s3-us-west-2.amazonaws.com/sparkml-mleap/0.9.6/jar/mleap_spark_assembly.jar -P /usr/lib/spark/jars/

sudo python3 -m pip install mleap

# Currently, EMR has a bug with installing Pandas as it's not compatible w/ the NumPy version \
# pre-installed on the nodes.

sudo python3 -m pip install pandas==1.1.5
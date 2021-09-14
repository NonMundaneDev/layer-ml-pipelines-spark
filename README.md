# Machine Learning Pipelines With Spark - Layer Technical Guide

This repository contains code samples and materials for Layer's technical guide on "Machine Learning Pipelines with Apache Spark". 

`emr_files` contains an end-to-end code sample for building an ML Pipeline with Spark on [Amazon Elastic MapReduce](https://aws.amazon.com/emr/) (EMR) and deploying Spark Pipeline on AWS SageMaker with [MLeap](https://github.com/combust/mleap) as the execution engine.

To run the code on EMR, ensure you use the necessary configuration files to [create a cluster with Spark](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-spark-launch.html):
- `boostrap_actions.sh` contains the shell script for [custom actions](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-bootstrap.html#bootstrapUses) during the cluster creation process. Ensure you upload it to an S3 bucket so you can use the URI to set up custom actions when configuring your cluster
- `emr_config.json` should go under the classifications for your software eocnfiguration.
- If you are struggling to find where to use these files, follow [this blog post](https://aws.amazon.com/blogs/machine-learning/build-amazon-sagemaker-notebooks-backed-by-spark-in-amazon-emr/).

The code was tested with the following configurations:
- **Release**: emr-5.23.0
- **Spark** *v2.4.0* and **Livy** *v0.5.0* applications.

## Running Code Sample On Colab
To run the code sample on Colab, check out the [notebook](https://github.com/NonMundaneDev/layer-ml-pipelines-spark/blob/main/Colab_Jupyter_NB_Customer_Income.ipynb).

Everything works fine except using MLeap. Colab does not work well with MLeap (`=<1.18.0`) as MLeap will require Docker to be installed on local machine--which Colab does not support currently or plan on supporting anytime soon.

## Running Code Sample On Local Jupyter Notebook
Ensure you install both PySpark and MLeap properly and use the [notebook](https://github.com/NonMundaneDev/layer-ml-pipelines-spark/blob/main/Colab_Jupyter_NB_Customer_Income.ipynb) by starting from the header "If you are using Local Jupyter Notebook".


## Credits

### Dataset Credits:

The dataset is credited to Ronny Kohavi and Barry Becker (from this paper) and was drawn from the 1994 United States Census Bureau data and involves using personal details such as education level to predict whether an individual will earn more or less than $50,000 per year.

### Resources

Concepts from the Colab notebook are heavily inspired by Janani Ravi's course on ["Building Machine Learning Models in Spark 2"](https://app.pluralsight.com/library/courses/spark-2-building-machine-learning-models/table-of-contents).

### Other References

[Imbalanced Classification with the Adult Income Dataset](https://machinelearningmastery.com/imbalanced-classification-with-the-adult-income-dataset/).

[Apache Spark ML documentation](https://spark.apache.org/docs/2.0.0-preview/ml-guide.html).

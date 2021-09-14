import boto3
import json

client = boto3.client('sagemaker-runtime')

endpoint_name = "sparkml-layer-ep-2021-09-13-01-20-38"                                       
content_type = "text/csv"                           
accept = "text/csv"                                 
payload =  "17.0, Local-gov, 10th, 6.0, Never-married, Protective-serv, \
            Own-child, White, Female, 0.0, 1602.0, 40.0, United-States"

# For the payload, you can also load a CSV containing the data you want to predict on.
response = client.invoke_endpoint(
    EndpointName=endpoint_name,
    ContentType=content_type,
    Accept=accept,
    Body=payload
    )

result = json.loads(response['Body'].read().decode()) # Decode the prediction from a binary object

if result == 1.0:
    print("Customer's income is greater than $50k per year.")
elif result == 0.0:
    print("Customer's income is lesser than or equivalent to $50k per year.")
                                   
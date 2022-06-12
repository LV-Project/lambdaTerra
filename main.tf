module "upload_lambda_function" {
  
  source="./aws/modules/lambda-1"

  lambda_payload_filename = "./zips/LambdaFunctionExample-1.0-SNAPSHOT-fromTerra.zip"
  lambda_function_handler = "org.bootcamp.latam.handlers.LambdaHandler::handleRequest"
  lambda_runtime = "java11"
  timeout = 60
  memory_size = 256

}


resource "aws_s3_object" "object" {
  bucket = "aws-lambda-bootcamp-bucket"
  key    = "LambdaFunctionExample-1.0-SNAPSHOT-fromTerra.zip"
  source = "./zips/LambdaFunctionExample-1.0-SNAPSHOT-fromTerra.zip"

  etag = filemd5("./zips/LambdaFunctionExample-1.0-SNAPSHOT-fromTerra.zip")
}
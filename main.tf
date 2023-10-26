module "s3" {
  source = "./module/s3"
}
module "lambda" {
  source = "./module/lambda"
  sqs_arn = module.sqs.sqs_arn
}
module "dynamoDB" {
  source = "./module/dynamodb"
}
module "sns" {
  source = "./module/sns"
}
module "sqs" {
  source     = "./module/SQS"
  lambda_arn = module.lambda.lambda_arn
}
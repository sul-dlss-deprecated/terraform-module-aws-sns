# terraform-module-aws-sns
A terraform module for building AWS SNS topics and resources

## Usage

### Create an SNS Topic

```
// Setup the SNS Topic(s)
module "project_sns_topic" {
  source = "github.com/sul-dlss-labs/terraform-module-aws-sns//topic?ref=v1"

  topic_name  = "${var.project_name}"
  environment = "${var.environment}"
}
```

### Subscribe an AWS Lambda to a topic

```
// Create SNS Topic Subscriptions
module "sns_subscribe_lambda" {
  source          = "github.com/sul-dlss-labs/terraform-module-aws-sns//subscribe/lambda?ref=v1"
  topic_arn       = "${module.project_sns_topic.sns_topic_arn}"
  lambda_endpoint = "${module.project_lambda.arn}"
}
```

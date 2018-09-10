variable topic_arn {}
variable lambda_endpoint {}

resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  topic_arn = "${var.topic_arn}"
  protocol  = "lambda"
  endpoint  = "${var.lambda_endpoint}"
}

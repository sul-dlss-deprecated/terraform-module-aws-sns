variable topic_name {}
variable environment {}

resource "aws_sns_topic" "sns_topic" {
  name = "${var.topic_name}-${var.environment}"
}

output sns_topic_arn {
  value = "${aws_sns_topic.sns_topic.arn}"
}

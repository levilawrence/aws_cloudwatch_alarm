# aws_sns_topic_subscription.user_updates_sqs_target:
resource "aws_sns_topic_subscription" "Over_Budget" {
    endpoint                       = "levi.lawrence123@gmail.com"
    protocol                       = "email"
    raw_message_delivery           = false
    topic_arn                      = aws_sns_topic.Over_Budget.id
}

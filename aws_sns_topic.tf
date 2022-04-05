# aws_sns_topic.user_updates:
resource "aws_sns_topic" "Over_Budget" {
    application_success_feedback_sample_rate = 0
    content_based_deduplication              = false
    display_name                             = "Over_Budget"
    fifo_topic                               = false
    firehose_success_feedback_sample_rate    = 0
    http_success_feedback_sample_rate        = 0
    lambda_success_feedback_sample_rate      = 0
    name                                     = "Over_Budget"
    sqs_success_feedback_sample_rate         = 0
    tags                                     = {}
    tags_all                                 = {}
}

# aws_cloudwatch_metric_alarm.test:
resource "aws_cloudwatch_metric_alarm" "Over_Budget" {
    actions_enabled           = true
    alarm_actions             = [
        aws_sns_topic.Over_Budget.id,
    ]
    alarm_name                = "Over_Budget"
    comparison_operator       = "GreaterThanThreshold"
    datapoints_to_alarm       = 1
    dimensions                = {
        "Currency" = "USD"
    }
    evaluation_periods        = 1
    insufficient_data_actions = []
    metric_name               = "EstimatedCharges"
    namespace                 = "AWS/Billing"
    ok_actions                = []
    period                    = 21600
    statistic                 = "Maximum"
    tags                      = {}
    tags_all                  = {}
    threshold                 = 0
    treat_missing_data        = "missing"
}

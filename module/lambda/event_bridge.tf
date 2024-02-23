module "eventbridge" {
  source  = "terraform-aws-modules/eventbridge/aws"
  version = "3.2.2"


  create_bus = false

  rules = {
    crons = {
      description         = "Trigger for a Lambda"
      schedule_expression = var.schedule_rate
    }
  }

  targets = {
    crons = [
      {
        name  = "lambda-loves-cron"
        arn   = aws_lambda_function.func.arn
        input = jsonencode({ "job" : "cron-by-rate" })
      }
    ]
  }
}


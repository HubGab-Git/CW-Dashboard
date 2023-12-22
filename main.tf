resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "CodeWhisperer-Statistics"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "Invocations",
              "Dimension",
              "Count"
            ],
             [
              "AWS/CodeWhisperer",
              "SubscriptionUserCount",
              "Dimension",
              "SubscriptionCount"
            ],
             [
              "AWS/CodeWhisperer",
              "UserCount",
              "Dimension",
              "DailyActiveUserTrend"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "User Activity"
        }
      },
      {
        type   = "metric"
        x      = 13
        y      = 0
        width  = 12
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "UniqueUserCount",
              "Dimension",
              "MonthlyActiveUniqueUsers"
            ]
          ]
          period = 2592000
          stat   = "Sum"
          region = "us-east-1"
          title  = "Monthly Active Unique Users"
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 7
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "InvocationCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Invocation Count - Block"
          view =  "timeSeries"
        }
      },
        {
        type   = "metric"
        x      = 8
        y      = 7
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "GeneratedLineCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Generated Line Count - Block"
          view =  "timeSeries"
        }
      },
      {
        type   = "metric"
        x      = 17
        y      = 7
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "Latency",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Average"
          region = "us-east-1"
          title  = "Latency - Block"
          view =  "timeSeries"
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 13
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "InvocationCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Invocation Count - Line"
          view =  "timeSeries"
        }
      },
        {
        type   = "metric"
        x      = 8
        y      = 13
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "GeneratedLineCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Generated Line Count - Line"
          view =  "timeSeries"
        }
      },
      {
        type   = "metric"
        x      = 17
        y      = 13
        width  = 8
        height = 6

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "Latency",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Average"
          region = "us-east-1"
          title  = "Latency - Line"
          view =  "timeSeries"
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 19
        width  = 24
        height = 7

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "GeneratedLineCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "GeneratedLineCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "InvocationCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "Latency",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "BLOCK",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "Latency",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "InvocationCount",
              "SuggestionState",
              "ACCEPT",
              "CompletionType",
              "LINE",
              "ProgrammingLanguage",
              "python"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Statistics Table"
          view =  "table"
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 25
        width  = 24
        height = 10

        properties = {
          metrics = [
            [
              "AWS/CodeWhisperer",
              "TotalCharacterCount",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "CodeWhispererCharacterCount",
              "ProgrammingLanguage",
              "python"
            ],
            [
              "AWS/CodeWhisperer",
              "TotalCharacterCount",
              "ProgrammingLanguage",
              "tf"
            ],
            [
              "AWS/CodeWhisperer",
              "CodeWhispererCharacterCount",
              "ProgrammingLanguage",
              "tf"
            ],
            [
              "AWS/CodeWhisperer",
              "TotalCharacterCount",
              "ProgrammingLanguage",
              "yaml"
            ],
            [
              "AWS/CodeWhisperer",
              "CodeWhispererCharacterCount",
              "ProgrammingLanguage",
              "yaml"
            ],
            [
              "AWS/CodeWhisperer",
              "TotalCharacterCount",
              "ProgrammingLanguage",
              "sql"
            ],
            [
              "AWS/CodeWhisperer",
              "CodeWhispererCharacterCount",
              "ProgrammingLanguage",
              "sql"
            ],
            [
              "AWS/CodeWhisperer",
              "TotalCharacterCount",
              "ProgrammingLanguage",
              "json"
            ],
            [
              "AWS/CodeWhisperer",
              "CodeWhispererCharacterCount",
              "ProgrammingLanguage",
              "json"
            ]
          ]
          period = 86400
          stat   = "Sum"
          region = "us-east-1"
          title  = "Programing Languages"
          view =  "table"
        }
      },
    ]
  })
}
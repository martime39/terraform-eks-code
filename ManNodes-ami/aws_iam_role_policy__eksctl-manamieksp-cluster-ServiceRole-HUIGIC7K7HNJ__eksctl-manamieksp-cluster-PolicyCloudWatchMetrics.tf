# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_iam_role_policy.eksctl-manamieksp-cluster-ServiceRole-HUIGIC7K7HNJ__eksctl-manamieksp-cluster-PolicyCloudWatchMetrics:
resource "aws_iam_role_policy" "eksctl-manamieksp-cluster-ServiceRole-HUIGIC7K7HNJ__eksctl-manamieksp-cluster-PolicyCloudWatchMetrics" {
  name = "eksctl-manamieksp-cluster-PolicyCloudWatchMetrics"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "cloudwatch:PutMetricData",
          ]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.eksctl-manamieksp-cluster-ServiceRole-HUIGIC7K7HNJ.id
}
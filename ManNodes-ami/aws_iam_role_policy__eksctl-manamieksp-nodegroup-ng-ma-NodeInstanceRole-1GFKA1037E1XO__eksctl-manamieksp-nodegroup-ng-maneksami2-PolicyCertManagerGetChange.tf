# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_iam_role_policy.eksctl-manamieksp-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO__eksctl-manamieksp-nodegroup-ng-maneksami2-PolicyCertManagerGetChange:
resource "aws_iam_role_policy" "eksctl-manamieksp-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO__eksctl-manamieksp-nodegroup-ng-maneksami2-PolicyCertManagerGetChange" {
  name = "eksctl-manamieksp-nodegroup-ng-maneksami2-PolicyCertManagerGetChange"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "route53:GetChange",
          ]
          Effect   = "Allow"
          Resource = "arn:aws:route53:::change/*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.eksctl-manamieksp-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO.id
}
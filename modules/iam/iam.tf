resource "aws_iam_policy" "api_gateway" {
  name        = "sf-metadata-inline-api-gateway-policy"
  path        = "/"
  description = "inline policy for api gateway access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "apigateway:DELETE",
          "apigateway:UpdateRestApiPolicy",
          "apigateway:SetWebACL",
          "apigateway:PUT",
          "apigateway:PATCH",
          "apigateway:POST",
          "apigateway:GET",

        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


resource "aws_iam_policy" "cloudfront" {
  name        = "sf-metadata-inline-cloudfront-policy"
  path        = "/"
  description = "inline policy for cloudfront access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "cloudfront:Create*",
          "cloudfront:List*",
          "cloudfront:Get*",
          "cloudfront:Update*",
          "cloudfront:TagResource",
          "cloudfront:Delete*",
          "cloudfront:UntagResource",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

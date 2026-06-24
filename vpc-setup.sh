{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "S3StaticAssets",
      "Effect": "Allow",
      "Action": ["s3:GetObject","s3:ListBucket"],
      "Resource": [
        "arn:aws:s3:::three-tier-static-assets",
        "arn:aws:s3:::three-tier-static-assets/*"
      ]
    },
    {
      "Sid": "CloudWatchMetrics",
      "Effect": "Allow",
      "Action": ["cloudwatch:PutMetricData","logs:CreateLogGroup","logs:CreateLogStream","logs:PutLogEvents"],
      "Resource": "*"
    },
    {
      "Sid": "SSMParameterAccess",
      "Effect": "Allow",
      "Action": ["ssm:GetParameter","ssm:GetParameters"],
      "Resource": "arn:aws:ssm:ap-south-1:*:parameter/three-tier/*"
    }
  ]
}

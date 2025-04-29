provider "aws"{
    region =var.aws_region
}
resource "aws_s3_bucket" "b"{
bucket=var.bucket_name

website{
    index_document="index.html"
}
}
resource "aws_s3_bucket_object" "frontend_files"{

for_each=local.frontend_files

bucket=aws_s3_bucket.b.bucket
key          = each.key
source       = "../frontend/${each.key}"
content_type = each.value
} 
locals{
    frontend_files={
        "index.html"      ="text/html"
        "homepage.html"   ="text/html"
        "logged_out.html" = "text/html"
        "styles.css"      = "text/css"
        "script.js"       = "application/javascript"
        "background.png"  = "image/png"
    }
}

resource "aws_cloudfront_origin_access_control" "s3_oac" {
  name                              = "cloudfront-oac"
  description                       = "OAC for CloudFront to access S3"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_s3_bucket_policy" "allow_cloudfront_oac" {
  bucket = aws_s3_bucket.b.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "AllowCloudFrontServicePrincipalReadOnly"
        Effect    = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action = [
          "s3:GetObject"
        ]
        Resource = "${aws_s3_bucket.b.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = aws_cloudfront_distribution.website_distribution.arn
          }
        }
      }
    ]
  })
}


resource "aws_cloudfront_distribution" "website_distribution" {
  origin {
    domain_name = aws_s3_bucket.b.bucket_regional_domain_name
    origin_id   = "s3-origin"

    origin_access_control_id = aws_cloudfront_origin_access_control.s3_oac.id
  }

  enabled             = true
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "s3-origin"
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  price_class = "PriceClass_100" # Cheapest option - use edge locations in North America & Europe

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  depends_on = [aws_s3_bucket_object.frontend_files]
}

output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.website_distribution.domain_name
  description = "CloudFront domain name for accessing the website"
}

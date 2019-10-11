# -----------------
# Cloudfront
# -----------------
module "Cloudfront" {
  source = "git::https://github.com/Cloud-42/terraform-aws-cloudfront.git"

  origin_domain_name     = "myalb.eu-west-1.elb.amazonaws.com"
  aliases                = ["alias1.domain.net", "alias2.domain.net"]
  orchestration          = "${var.orchestration}"
  comment                = "SpeedyCache"
  acm_certificate_arn    = "${data.aws_acm_certificate.cloudfront.arn}"
  environment            = "${var.environment}"
  origin_id              = "myuniqueoriginid"
  viewer_protocol_policy = "allow-all"
  forward_headers        = ["*"]
  forward_cookies        = "all"
  forward_query_string   = true
}

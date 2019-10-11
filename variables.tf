variable "ssl_support_method" {
  description = "Specifies how you want CloudFront to serve HTTPS requests. sbi-only or vip. vip will incur additional charges for a dedicated IP"
  default     = "sni-only"
}

variable "web_acl_id" {
  description = "Web ACL ID that can be attached to the distribution"
  default     = ""
}

variable "enabled" {
  description = "Enabled / Disabled"
  default     = "true"
}

variable "default_ttl" {
  description = "Default time-to-live"
  default     = "60"
}

variable "geo_restriction_type" {
  description = "Optional ability to restrict access. None, whitelist or blacklist"
  default     = "none"
}

variable "origin_read_timeout" {
  description = "origin read timeout"
  default     = "60"
}

variable "origin_protocol_policy" {
  description = "The origin protocol policy. http-only, https-only or match-viewer"
  default     = "match-viewer"
}

variable "viewer_minimum_protocol_version" {
  description = "Minimum allowed TLS version"
  default     = "TLSv1"
}

variable "viewer_protocol_policy" {
  description = "Viewer protocol policy. allow-all or redirect-to-https"
  default     = "redirect-to-https"
}

variable "allowed_methods" {
  type        = "list"
  description = "List of allowed methods"
  default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}

variable "origin_https_port" {
  description = "HTTPS port"
  default     = "443"
}

variable "compress" {
  description = "Whether CloudFront will automatically compress content"
  default     = "false"
}

variable "aliases" {
  type        = "list"
  description = "List of aliases."
  default     = []
}

variable "is_ipv6_enabled" {
  description = "Enable IPv6"
  default     = "true"
}

variable "min_ttl" {
  description = "Minimum TTL"
  default     = "0"
}

variable "max_ttl" {
  description = "Maximum TTL"
  default     = "31536000"
}

variable "forward_query_string" {
  description = "Forward query strings"
  default     = "false"
}

variable "orchestration" {
  description = "Link to the orchestration used to build the infra"
  default     = ""
}

variable "comment" {
  description = "Comment for the CloudFront distribution"
  default     = ""
}

variable "acm_certificate_arn" {
  description = "ARN of ACM certificate"
  default     = ""
}

variable "environment" {
  description = "Environment whether infra is build. For example: DEV, UAT or PRD"
  default     = ""
}

variable "geo_restriction_locations" {
  type        = "list"
  description = "Geographic restriction codes, either used as a whitelist or blacklist "
  default     = []
}

variable "origin_keepalive_timeout" {
  description = "Custom keep-alive timeout"
  default     = "60"
}

variable "origin_domain_name" {
  description = "DNS domain name of the origin"
  default     = ""
}

variable "origin_path" {
  description = "Optional custom path to use for the origin"
  default     = ""
}

variable "cached_methods" {
  type        = "list"
  description = "List of cached methods ( GET, PUT, POST, DELETE, HEAD )"
  default     = ["GET", "HEAD"]
}

variable "forward_headers" {
  type        = "list"
  description = "Set the headers, if any, that CloudFront should forward. Include all = *"
  default     = []
}

variable "price_class" {
  description = "Price class for the distribution. "
  default     = "PriceClass_100"
}

variable "origin_http_port" {
  description = "HTTP port"
  default     = "80"
}

variable "origin_ssl_protocols" {
  type        = "list"
  description = "List of allowed SSL protocols"
  default     = ["TLSv1", "TLSv1.1", "TLSv1.2"]
}

variable "forward_cookies" {
  description = "Forward cookies"
  default     = "none"
}

variable "cache_behavior" {
  type        = "list"
  description = "Ordered list of cache behaviours for the distribution"
  default     = []
}

variable "default_root_object" {
  description = "Object to return when accessing the root URL"
  default     = ""
}

variable "origin_id" {
  description = "A unique identifier for the origin"
  default     = ""
}

variable "forward_cookies_whitelisted_names" {
  type        = "list"
  description = "List of forwarded cookie names"
  default     = []
}

resource "aws_route53_zone" "private_zone" {
  name = var.private_domain_name
}

resource "aws_route53_zone" "public_zone" {
  name = var.public_domain_name
}

resource "aws_route53_record" "sitedomain" {
  zone_id = aws_route53_zone.public_zone.zone_id
  name = var.site_domain_record_type
  type = " "
  ttl = var.site_domain_ttl
  records = [public_ip]
}

resource "aws_route53_record" "seconddomain" {
  zone_id = aws_route53_zone.private_zone.zone_id
  name = var.second_domain_record_type
  type = " "
  ttl = var.second_domain_ttl
  records = [private_ip]
}


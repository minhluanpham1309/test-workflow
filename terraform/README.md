# Terraform test tối giản (AWS)

Config nhỏ để test `terraform plan`. Mặc định chưa tạo resource nào nên
plan luôn báo **No changes** — không cần AWS credentials.

## Chạy

```bash
cd terraform
terraform init
terraform validate
terraform plan
```

## Muốn test tạo resource thật

Mở `main.tf`, bỏ comment khối `aws_s3_bucket` + `random_id`, thêm provider
`random` vào `required_providers`, rồi cấu hình AWS credentials (env var
`AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY` hoặc `aws configure`) trước khi
chạy `terraform plan` / `terraform apply`.

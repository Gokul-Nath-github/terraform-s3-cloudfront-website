# terraform-s3-cloudfront-website
Infrastructure-as-Code: Deploying a versioned S3 website with CloudFront CDN using Terraform

# S3 Static Website with CloudFront CDN (Terraform)

This project deploys a static website hosted on **Amazon S3**, served securely via **AWS CloudFront CDN**, all provisioned using **Terraform**.

---

## Features

- S3 Bucket with static website hosting
- CloudFront distribution with origin access identity
- HTTPS support via default CloudFront SSL certificate
- Terraform-based infrastructure-as-code
- Public access with secure IAM policy
- Modular, portable, and customizable setup

---

##  Project Structure

```
├── variables.tf            # Input variables
├── outputs.tf              # Output values
├── cloudfront.tf           # CloudFront configuration
├── s3.tf                   # S3 bucket setup
├── README.md               # Project documentation
├── .gitignore              # Git ignored files
├── LICENSE                 # MIT License
└── screenshots/            # Screenshots for documentation
```

# Screenshots
1. [S3 Bucket Configuration](screenshots/Cloudfront_sc.jpg)
2. [CloudFront Distribution](screenshots/s3_sc.jpg)
3. [Live Website](screenshots/website_sc.jpg)

# Requirements
AWS CLI with credentials configured
Terraform installed (>= 1.0)
An HTML file

# License
This project is licensed under the MIT License.

# Acknowledgements
Terraform AWS Provider Docs
AWS CloudFront Documentation
AWS S3 Static Website Hosting

# Author
Gokul Nath RK
GitHub: Gokul-Nath-github


Let me know if you’d like me to customize this further

provider "aws" {
  region = "us-east-1"
  
}
provider "aws" {
  region = var.region[0]
  alias  = "useast1"
}

provider "aws" {
  region = var.region[1]
  alias  = "apsouth1"
}

provider "aws" {
  region = var.region[2]
  alias  = "euwest1"
}

# even if buckets-var.tf is present i called or gave an explicit reference for bucket in resource block it worked or can also reference var fronm buckets.tf

# Create S3 buckets in respective regions
resource "aws_s3_bucket" "phoenix_proj_55sri2" {
  provider = aws.useast1
  #bucket   = "phoenix-proj-55sri2"
  bucket = var.s3_bucket_names[0]
}

resource "aws_s3_bucket" "phoenix_proj_56sri2" {
  provider = aws.apsouth1
  #bucket   = "phoenix-proj-56sri2"
   bucket = var.s3_bucket_names[1]
}

resource "aws_s3_bucket" "phoenix_proj_57sri2" {
  provider = aws.euwest1
  #bucket   = "phoenix-proj-57sri2"
   bucket = var.s3_bucket_names[2]
}

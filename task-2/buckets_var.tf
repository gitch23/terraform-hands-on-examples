variable "s3_bucket_names" {
  description = "Provide the list of buckets to be created"
  type = list(string)
  default = ["phoenix-proj-55sri1","phoenix-proj-56sri1","phoenix-proj-57sri1"]
}
variable "bucket" {
    default = "sf-datamgmt-metadata-bucket-us-east-1"
}

variable "acl" {
    default = "private"
}

variable "kms_master_key_id" {
    default = ""
}

variable "sse_algorithm" {
    default = ""
}

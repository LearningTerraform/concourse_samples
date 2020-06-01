
##===========================================================================================
## AWS Account,Region & env Specific
##===========================================================================================


variable "account_profile" {
  type        = string
  description = "Profile permissions."
  default = "desktop-sdlc-preprod"
}

variable "region" {
  type    = string
  description = "Region that we wish to deploy into."
  default="us-east-1"C:\Users\U6080180\OneDrive - Refinitiv\straada\tempov1\page_express\modules\aws-tf-dynamodb\variables.tf
}

 
variable "EnvironmentType" {
  type        = string
  description = "Type of the environment. Allowed values are dev,alpha,beta and prod"
  default=dev
}


variable "ResourceOwner" {
  type        = string
  description = "Name of the resource owner"
  default = "vijith"
}

##=============================================================================================
## Dynamo DB Specific attributes
##==============================================================================================


variable "billing_mode" {
 description = "Controls how you are charged valid values are PROVISIONED and PAY_PER_REQUEST. Defaults to PROVISIONED" 
 default = "PROVISIONED"
}


variable "read_attribute"{
 description = " The number of read units for this table / smaple format 1 / 2 / 100 etc" 
 default = "1"
}

variable "write_attribute"{
 default = "1"
 type = number
 description = " The number of write units for this table / smaple format 1 / 2 / 100 etc"
}


variable "attribute_type"{
 description = "Attribute type, which must be a scalar type: S, N, or B for (S)tring, (N)umber or (B)inary data"
}


variable "table_name"{
 description = "Table name which has to be created, ex: aaa-cache" 
}

variable "table_attribute"{
 description = "attribute to use as the hash (partition) key, Partition Key , ex : UserID" 
}


variable "enable_point_in_time_recovery" {
    description = "Enable DynamoDB point in time recovery"
}


locals {
  
  tags = {
    "tr:resource-owner"               = "${var.ResourceOwner}"
    "tr:environment-type"             = "${var.EnvironmentType}"
  }

}

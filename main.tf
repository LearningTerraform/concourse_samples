module "base_dynamo_table" {
  source = "../../base_module/"    
  table_name = "bbb-cache"
  table_attribute = "Users"
  attribute_type = "S"
  enable_point_in_time_recovery = "false"
  region="ap-south-1"
  EnvironmentType = "dev"
}

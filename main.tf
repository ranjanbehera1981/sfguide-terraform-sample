terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.76"
    }
  }
}

provider "snowflake" {
role = "SYSADMIN"
account  = "GS52755"
username = "tf-snow"
region   = "us-east-2"
private_key_path = "C:/Users/ranja/.ssh/snowflake_tf_snow_key.p8"
}

resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"
  auto_suspend   = 60
}
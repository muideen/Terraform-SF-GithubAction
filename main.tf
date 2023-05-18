terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "DataKnots-solutions"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "TRAINING_DB" {
  name    = "TRAINING_DB"
  comment = "Database for Snowflake Terraform demo"
}
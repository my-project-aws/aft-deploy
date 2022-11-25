# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  # Required Vars
  ct_management_account_id    = "592485218204"
  log_archive_account_id      = "140742934807"
  audit_account_id            = "595026199011"
  aft_management_account_id   = "137457353584"
  ct_home_region              = "us-east-1"
  tf_backend_secondary_region = "us-west-2"

  #config var
  terraform_distribution = "oss"
  vcs_provider = "github"
 

  #feature falgs
  aft_feature_delete_default_vpcs_enabled = true
}

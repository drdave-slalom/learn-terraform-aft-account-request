module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "miwofek173@tiuas.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "miwofek173@tiuas.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

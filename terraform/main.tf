module "iam_eclipse_v1_task_role" {
  source       = "./modules/roles"
  role_name    = "app-eclipse-role"
  statement_id = "TaskExecution"
  trusted_identifier = {
    type        = "Service"
    identifiers = ["ecs-tasks.amazonaws.com"]
  }
  iam_policies_to_attach = [module.iam_eclipse_v1_policy.output.policy_arn]
}
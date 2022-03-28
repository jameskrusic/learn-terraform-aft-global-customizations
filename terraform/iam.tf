module "iam_eclipse_v1_policy" {
  source = "./modules/policies"
  policy_name        = "app-eclipse-v1-policy"
  policy_description = "Pipeline Role"
  statements = [
    {
      sid    = "Deployment"
      effect = "Allow"
      actions = [
        "ecs:*",
        "ecr:*",
        "ssm:*"
      ]
      resources = ["*"]
    },
  ]
}
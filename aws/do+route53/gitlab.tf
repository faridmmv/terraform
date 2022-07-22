#data "gitlab_group" "devops_users_repos" {
#  group_id = 1710
#}

#resource "gitlab_project" "terraform-01" {
#  name = "terraform-02"
#  namespace_id = data.gitlab_group.devops_users_repos.id
#}

#resource "gitlab_deploy_key" "sample_deploy_key" {
#  project = gitlab_project.terraform-01.id
#  title   = "terraform-01-task"
#  key     = var.gitlab_deploy_key
#  can_push = true
#}
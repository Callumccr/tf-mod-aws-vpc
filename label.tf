module "label" {
  source             = "git::ssh://git@git.testplant.com/devops/tf-mod-label.git?ref=master"
  context            = var.context
  namespace          = var.namespace
  environment        = var.environment
  name               = var.name
  attributes         = ["vpc"]
  delimiter          = "-"
  additional_tag_map = {} /* Additional attributes (e.g. 1) */
  label_order        = ["namespace", "environment", "name", "attributes"]
}

module "sg_label" {
  source             = "git::ssh://git@git.testplant.com/devops/tf-mod-label.git?ref=master"
  context            = module.label.context
  namespace          = var.namespace
  environment        = var.environment
  name               = var.name
  attributes         = ["sg"]
  delimiter          = "-"
  additional_tag_map = {} /* Additional attributes (e.g. 1) */
  label_order        = ["namespace", "environment", "name", "attributes"]
}

module "igw_label" {
  source             = "git::ssh://git@git.testplant.com/devops/tf-mod-label.git?ref=master"
  context            = module.label.context
  namespace          = var.namespace
  environment        = var.environment
  name               = var.name
  attributes         = ["igw"]
  delimiter          = "-"
  additional_tag_map = {} /* Additional attributes (e.g. 1) */
  label_order        = ["namespace", "environment", "name", "attributes"]
}


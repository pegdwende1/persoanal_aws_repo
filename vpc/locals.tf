locals {
  project_tags = {
    Owner = "Sound Speed Trucling LLC"
    application =  "bills"
    project = "jjtech"
    environment = "${terraform.workspace}"
    creationTime = timestamp()
 }
}
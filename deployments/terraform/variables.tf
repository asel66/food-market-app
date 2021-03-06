## This image will be used to deploy the hello world application
variable  "deployment_image" {
    description = "(Required)- Please provie docker image for deployment."
}

## Actual environment to use FuchiCorp uses namespace as environment
variable "deployment_environment" {
    description = "(Required)- Please provide deployment environment <namespace>."
}

## Deployment endpoint for the application
variable "deployment_endpoint" {
    type = "map"
     default = {
        test  = "test.food-market"
        dev  = "dev.food-market"
        qa   = "qa.food-market"
        prod = "food-market"
        stage = "stage.food-market"
  }
  description = "(Optional)- Application endpoint."
}

## This domain name will be included to application endpoint
variable "google_domain_name" {
    default = "fuchicorp.com"
    description = "(Optional)- Actual domain name to use for the deployment."
}
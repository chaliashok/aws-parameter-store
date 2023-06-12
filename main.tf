resource "aws_ssm_parameter" "params" {
  count       = length(var.params)
  name        = var.params[count.index].name
  description = "Example parameter"
  type        = var.params[count.index].type
  value       = var.params[count.index].value
 }

variable "params" {
  default = [
    { name= "roboshop.dev.frontend.catalogue_url", value="http://catalogue-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.frontend.catalogue_url", value="http://user-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.frontend.catalogue_url", value="http://cart-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.frontend.catalogue_url", value="http://payment-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.frontend.catalogue_url", value="http://shipping-dev.devopsawschinni.online",type= "String" }
  ]
}
resource "aws_ssm_parameter" "params" {
  count       = length(var.params)
  name        = var.params[count.index].name
  description = "Example parameter"
  type        = var.params[count.index].type
  value       = var.params[count.index].value
 }

variable "params" {
  default = [
    { name= "roboshop.dev.frontend.catalogue_url", value="http://catalogue-dev.devopsawschinni.online:8080/",type= "String" },
    { name= "roboshop.dev.frontend.user_url", value="http://user-dev.devopsawschinni.online:8080/",type= "String" },
    { name= "roboshop.dev.frontend.cart_url", value="http://cart-dev.devopsawschinni.online:8080/",type= "String" },
    { name= "roboshop.dev.frontend.payment_url", value="http://payment-dev.devopsawschinni.online:8080/",type= "String" },
    { name= "roboshop.dev.frontend.shipping_url", value="http://shipping-dev.devopsawschinni.online:8080/",type= "String" },
 #cart
    { name= "roboshop.dev.cart.redis_host", value="redis-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.cart.catalogue_host", value="catalogue-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.cart.catalogue_port", value="8080",type= "String" },
#catalogue
    { name= "roboshop.dev.catalogue.mongo_url", value="mongodb://mongodb-dev.devopsawschinni.online:27017/catalogue",type= "String" },
#dispatch
    { name= "roboshop.dev.dispatch.rabbitmq_host", value="rabbitmq-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.dispatch.rabbitmq_user", value="roboshop",type= "String" },
    { name= "roboshop.dev.dispatch.rabbitmq_password", value="roboshop123",type= "String" },
#payment
    { name= "roboshop.dev.payment.cart_host", value="cart-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.payment.rabbitmq_host", value="cart-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.payment.user_host", value="cart-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.payment.rabbitmq_user", value="roboshop",type= "String" },
    { name= "roboshop.dev.payment.rabbitmq_password", value="roboshop123",type= "SecureString" },
    { name= "roboshop.dev.payment.cart_port", value="8080",type= "String" },
    { name= "roboshop.dev.payment.user_port", value="8080",type= "String" },
#shipping
    { name= "roboshop.dev.shipping.cart_host", value="cart-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.shipping.mysql_host", value="mysql-dev.devopsawschinni.online",type= "String" },
#user
    { name= "roboshop.dev.user.redis_host", value="redis-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.user.mongo_url", value="mongodb://mongodb-dev.devopsawschinni.online:27017/users",type= "String" }

  ]
}
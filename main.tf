resource "aws_ssm_parameter" "params" {
  count       = length(var.params)
  name        = var.params[count.index].name
  description = "Example parameter"
  type        = var.params[count.index].type
  value       = var.params[count.index].value
  overwrite = true
  key_id    = "9bd896cf-ebab-4908-95af-8aa0d7800a5f"
 }

/*variable "params" {
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
    { name= "roboshop.dev.payment.rabbitmq_host", value="rabbitmq-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.payment.user_host", value="user-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.payment.rabbitmq_user", value="roboshop",type= "String" },
    { name= "roboshop.dev.payment.rabbitmq_password", value="roboshop123",type= "SecureString" },
    { name= "roboshop.dev.payment.cart_port", value="8080",type= "String" },
    { name= "roboshop.dev.payment.user_port", value="8080",type= "String" },
    #shipping
    { name= "roboshop.dev.shipping.cart_host", value="cart-dev.devopsawschinni.online:8080",type= "String" },
    { name= "roboshop.dev.shipping.mysql_host", value="mysql-dev.devopsawschinni.online",type= "String" },
    #user
    { name= "roboshop.dev.user.redis_host", value="redis-dev.devopsawschinni.online",type= "String" },
    { name= "roboshop.dev.user.mongo_url", value="mongodb://mongodb-dev.devopsawschinni.online:27017/users",type= "String" }

  ]
}
*/

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsawschinni.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsawschinni.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsawschinni.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsawschinni.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsawschinni.online/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.nud0cy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopsawschinni.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopsawschinni.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopsawschinni.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopsawschinni.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopsawschinni.online:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cfabguif4rdg.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.nud0cy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    //    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devopsawschinni.online:27017/users", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cfabguif4rdg.us-east-1.rds.amazonaws.com", type = "String" },

    ### Passwords will be never part of git repos, Usually in organizations we create them nanually. Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com", type = "String" },


    ### prod
    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.devopsawschinni.online/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.devopsawschinni.online/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.devopsawschinni.online/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.devopsawschinni.online/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.devopsawschinni.online/", type = "String" },
    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod.nud0cy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.devopsawschinni.online", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },
    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.devopsawschinni.online", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-prod.devopsawschinni.online", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.devopsawschinni.online", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.devopsawschinni.online:80", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cfabguif4rdg.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod.nud0cy.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cfabguif4rdg.us-east-1.rds.amazonaws.com", type = "String" },

    ### Passwords will be never part of git repos, Usually in organizations we create them nanually. Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cfabguif4rdg.us-east-1.docdb.amazonaws.com", type = "String" },

  ]
}
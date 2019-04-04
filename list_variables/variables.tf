/* List variables - CODE
You need three files - variables.tf , main.tf and provider.tf. Please create those and add below contents
NOTE :You need to replace security group entries with the ones that exist in your account
*/
variables.tf contents:
variable "amitype" {
}

variable "sgs" {
type = "list"
default = ["sg-07b2fc6c", "sg-48bba323"]
}

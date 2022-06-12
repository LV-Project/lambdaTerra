variable "lambda_payload_filename" {
  type = string
  description="file ubication"
}

variable "lambda_function_handler" {
  type = string
  description = "internal route to the lamdba method"

}

variable "lambda_runtime" {
  type = string
  description = "lambda runtime version"
}

variable "timeout" {
  type = number
  description = "waiting time"
}

variable "memory_size" {
  type = number
  description = "memory size"
}

variable "api_path" {
  description = "api path"
  default = "{proxy+}"
}

variable "api_env_stage_name" {
  description = "api envarioment stage name"
  default = "terraform-lambda-java-stage"
}
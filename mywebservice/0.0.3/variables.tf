# @label "Image Name"
# @group "Basic_Basic_Basic_Basic_Basic_Basic_Basic"
variable "image" {
  type        = string
  description = "Docker image name"
}
# @label "Ports"
# @group "Basic_Basic_Basic_Basic_Basic_Basic_Basic"
variable "ports" {
  type        = list(number)
  description = "Service ports to expose"
  default = [80]
}
# @label "Environment Variables"
# @group "Basic_Basic_Basic_Basic_Basic_Basic_Basic"
variable "env" {
  type        = map(string)
  description = "Name and value pairs to set as the environment variables"
  default     = {}
}
# @group "Resources_Resources_Resources_Resources_Resources_Resources_Resources_Resources"
# @label "CPU"
# @options ["0.2","0.5","1"]
variable "cpu" {
  type        = string
  description = "CPU"
  default = "0.2"
}
# @group "Resources_Resources_Resources_Resources_Resources_Resources_Resources_Resources"
# @label "Memory"
# @options ["1Gi","2Gi","4Gi"]
variable "memory" {
  type        = string
  description = "Memory"
  default = "100Mi"
}
# @group "Resources_Resources_Resources_Resources_Resources_Resources_Resources_Resources"
# @show_if "memory=1Gi"
variable "test_show_if_A" {
  type        = string
  description = "Testing show_if"
  default = "hello"
}
# @label "Namespace"
# @group "Advanced_Advanced_Advanced_Advanced_Advanced_Advanced_Advanced_Advanced"
variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default = ""
}
# @label "Deployment Name"
# @group "Advanced_Advanced_Advanced_Advanced_Advanced_Advanced_Advanced_Advanced"
variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default = ""
}

# @group "Test/group1"
variable "test_module" {
  type        = string
  description = "Test module output"
  default = "Testing"
}

# @group "Test/group2"
# @options [40,60,80,100]
variable "system_disk_size" {
  description = "The size of the system disk"
  type = number
  default     = 40
}

# @group "Test/group3"
# @options ["yes","no","haha"]
variable "test_options" {
  description = "Testing var options"
  type = string
  default     = "yes"
}

# @group "Test/group2"
# @options ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
variable "test_list" {
  description = "Testing options list and no default value"
  type = list(string)
}

# @group "Test/group2"
# @options [20, 30, 50, "60"]
variable "test_mix" {
  description = "Testing mixed type options"
  default     = 20
}

# @group "Test/group2"
# @options [20, 30, 50, 60]
variable "test_mix_number" {
  description = "Testing mixed type options"
  type = number
}

# @group "Test/group2"
# @options [20, 30, 50, "60"]
variable "test_number_list" {
  description = "Testing mixed type options"
  type = list(number)
}

# @group "Test/group2"
# @options [20, 30, 50, 60]
# @show_if "test_mix_number=20"
variable "test_show_if" {
  description = "Testing show_if"
  type = list(number)
  default = [10]
}

# @group "Test/group2"
# @options [20, 30, 50, 60]
# @show_if "test_null=20"
variable "test_show_if_B" {
  description = "Testing show_if var does not exist"
  type = list(number)
  default = [10]
}

# @group "Test/group2"
# @hidden
variable "test_hidden" {
  description = "Testing hidden var"
  type = string
  default = "hello world!"
}
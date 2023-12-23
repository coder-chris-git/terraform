variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}

variable "user" {
  type = object({
    name  = string
    token = string
  })

  default = {
    name  = ""
    token = ""
  }

}
variable "jenkins_jobs" {
  type = list(object({
    name               = string
    jenkins_automation = string
    number_of_jobs     = optional(number, 0)

    job_urls = list(object({

      job_url  = string
      job_name = string
      params   = list(string)
      token    = optional(string)
      user     = optional(string)


    }))
  }))
  default = [

  ]
  description = "Location of the resource group."
}

variable "jenkins_list" {
  type = list(object({
    name           = string
    number_of_jobs = optional(number, 0)
    jenkins_automation = optional(list(object({
      job_url  = string
      index    = number
      job_name = string
      params   = list(string)
      token    = optional(string)
      user     = optional(string)


    })), null)
  }))
  default = [
    {
      name           = "server1"
      number_of_jobs = 2
      token          = "usertoken"
      user           = "jenkins_user"
      jenkins_automation = [
        {
          job_url  = "job1_url"
          index    = 0
          job_name = "first_job_name"
          params   = ["first=first_param1", "second=first_param2"]

        },

        {
          job_url  = "secondurl"
          job_name = "second_job_name"
          params   = ["first=first_param2", "second=second_param2"]
          token    = "token2"
          index    = 1
          user     = "second"

        }
      ]
    




    }







  ]
  description = "Location of the resource group."
}
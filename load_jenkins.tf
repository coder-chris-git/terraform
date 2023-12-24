# # locals {
# #   nestedlist = flatten([for key, jenkins_job in var.jenkins_jobs : [
# #     for sub_key, job in jenkins_job.job_urls :
# #     {
# #       name               = jenkins_job.name,
# #       jenkins_automation = jenkins_job.jenkins_automation
# #       job_url            = job.job_url,
# #       params             = job.params,
# #       token              = job.token,
# #       user               = job.user
# #       index              = sub_key
# #       job_name           = job.job_name
# #     }
# #     ]
# #     ]

# #   )
# # }

# # resource "null_resource" "oracle_linux_database" {

# #   for_each = { for i, o in var.jenkins_jobs : "${o.name}" => o
# #     if o.jenkins_automation == "oracle_linux_database"
# #   }


# #   provisioner "local-exec" {
# #     interpreter = ["/bin/sh", "-c"]
# #     command     = <<heredoc


# #     echo linux baseline ${each.value.job_urls[0].job_name} this is first
# #     echo job finished

# #      heredoc

# #   }
# #   provisioner "local-exec" {
# #     interpreter = ["/bin/sh", "-c"]
# #     command     = <<heredoc

# #     echo ddboost ${each.value.job_urls[1].job_name} this is second
# #     echo job finished

# #      heredoc

# #   }
# # }


# resource "null_resource" "oracle_linux_databasWQe" {

#   for_each = { for i, o in var.jenkins_list : "${i}" => o

#   }


#   provisioner "local-exec" {
#     interpreter = ["/bin/sh", "-c"]
#     command     = <<heredoc


#     echo server : ${each.key} 
#     echo  co${each.value.}
#     echo job finished

#      heredoc

#   }
#   provisioner "local-exec" {
#     interpreter = ["/bin/sh", "-c"]
#     command     = <<heredoc

#     echo ddboost ${each.value.job} this is second
#     echo job finished

#      heredoc

#   }
# }

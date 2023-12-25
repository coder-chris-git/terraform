# module "jenkins" {
#   source = "./spoke.tf"
#   jenkins_list_1 = [
#     {
#       name           = "server1"
#       number_of_jobs = 2
#       token          = "usertoken"
#       user           = "jenkins_user"
#       jenkins_automation = [
#         {
#           job_url  = "job1_url"
#           index    = 0
#           job_name = "first_job_name"
#           params   = ["first=first_param1", "second=first_param2"]

#         },

#         {
#           job_url  = "secondurl"
#           job_name = "second_job_name"
#           params   = ["first=first_param2", "second=second_param2"]
#           token    = "token2"
#           index    = 1
#           user     = "second"

#         }
#       ]
#     }
#   ]
# }



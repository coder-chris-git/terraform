locals {

  # json_l = jsondecode(var.jenkins_list_1)
}

# resource "null_resource" "oracle_linux_database" {

#   for_each = { for i, o in var.jenkins_jobs : "${o.name}" => o
#     if o.jenkins_automation == "oracle_linux_database"
#   }


#   provisioner "local-exec" {
#     interpreter = ["/bin/sh", "-c"]
#     command     = <<heredoc


#     echo linux baseline ${each.value.job_urls[0].job_name} this is first
#     echo job finished

#      heredoc

#   }
#   provisioner "local-exec" {
#     interpreter = ["/bin/sh", "-c"]
#     command     = <<heredoc

#     echo ddboost ${each.value.job_urls[1].job_name} this is second
#     echo job finished

#      heredoc

#   }
# }


resource "null_resource" "oracle_linux_databasWQe" {

  for_each = { for i, o in var.jenkins_list_1 : "${i}" => o

  }


  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<heredoc

    
    echo na${each.key} this is first 
    echo job finished
     
     heredoc

  }
  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<heredoc

    echo ddboost ${each.value.job} this is second
    echo job finished
     
     heredoc

  }
}

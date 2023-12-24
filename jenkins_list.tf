resource "null_resource" "jenkins_job_1" {

  for_each = { for host, o in var.jenkins_list_1 : "${o.name}_${o.jenkins_automation[0].job_name}" => o
    if o.jenkins_automation != null
  }

  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<heredoc


    echo ${each.value.jenkins_automation[0].job_name}

    echo job finished

     heredoc

  }
}

resource "null_resource" "jenkins_job_2" {
  depends_on = [null_resource.jenkins_job_1]





  for_each = { for host, o in var.jenkins_list : "${o.name}_${o.jenkins_automation[1].job_name}" => o
    if o.number_of_jobs > 1
  }

  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<heredoc


    echo ${each.value.jenkins_automation[1].job_name}

    echo job finished

     heredoc

  }
}



resource "null_resource" "jenkins_job_3" {
  depends_on = [null_resource.jenkins_job_2]




  for_each = { for host, o in var.jenkins_list : "${o.name}_${o.jenkins_automation[2].job_name}" => o
    if o.number_of_jobs > 2
  }

  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<heredoc


    echo ${each.value.jenkins_automation[2].job_name}

    echo job finished

     heredoc

  }
}

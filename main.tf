


resource "null_resource" "test1" {

 # for_each = {for o in var.jenkins_jobs : o.name => o }


  
 for_each = { 
   
   for i,o in local.nestedlist : "${o.name}_${o.job_url}" => o 
   }
   

    provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command = <<heredoc

    
    echo ${each.value.job_url}
     
     heredoc
  



}
}
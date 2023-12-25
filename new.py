
# json=[{"name":"serv55","number_of_jobs":2,"token":"usertoken","user":"jenkins_user","jenkins_automation":[{"job_url":"job1_url","index":0,"job_name":"first_job_name","params":["first=first324_param1","second=first_param2"]},{"job_url":"secondurl","job_name":"s454_job_name","params":["first=first_param2","second=seco234nd_param2"],"token":"tok234en2","index":1,"user":"se432cond"}]}]
import requests
url = "https://api.github.com/repos/coder-chris-git/terraform/actions/workflows/terraform.yml/dispatches"
jenkins_list = t


response = requests.post(url, 
    headers={
        "Content-Type": "application/json",
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer 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",
        "X-GitHub-Api-Version": "2022-11-28"
        },
    data='{"ref":"main","inputs":{"jenkins_list":[{"name":"s55","number_of_jobs":2,"token":"usertoken","user":"jenkins_user","jenkins_automation":[{"job_url":"job1_url","index":0,"job_name":"first_job_name","params":["first=first324_param1","second=first_param2"]},{"job_url":"secondurl","job_name":"s454_job_name","params":["first=first_param2","second=seco234nd_param2"],"token":"tok234en2","index":1,"user":"se432cond"}]}]}'
    
)

print(response.json())





# terraform plan -var=jenkins_list="$jenkins_list"

#!/bin/bash

# Load github secret from .env file
set -a; source .env; set +a



json='[{"name":"serv55","number_of_jobs":2,"token":"usertoken","user":"jenkins_user","jenkins_automation":[{"job_url":"job1_url","index":0,"job_name":"first_job_name","params":["first=first324_param1","second=first_param2"]},{"job_url":"secondurl","job_name":"s454_job_name","params":["first=first_param2","second=seco234nd_param2"],"token":"tok234en2","index":1,"user":"se432cond"}]}]'

json_string='[{"name":"serv55","number_of_jobs":2,"token":"usertoken","user":"jenkins_user","jenkins_automation":[{"job_url":"job1_url","index":0,"job_name":"first_job_name","params":["first=first324_param1","second=first_param2"]},{"job_url":"secondurl","job_name":"s454_job_name","params":["first=first_param2","second=seco234nd_param2"],"token":"tok234en2","index":1,"user":"se432cond"}]}]'

# jenkins_list='{"s55w":{"number_of_jobs":2,"token":"usertoken","user":"jenkins_user","jenkins_automation":[{"job_url":"job1_url","index":0,"job_name":"first_job_name","params":["first=first324_param1","second=first_param2"]},{"job_url":"secondurl","job_name":"s454_job_name","params":["first=first_param2","second=seco234nd_param2"],"token":"tok234en2","index":1,"user":"se432cond"}]}}'


terraform plan -var=jenkins_list_1="$json_string"

curl -L \
  -X POST \
  -H 'Accept: application/vnd.github+json' \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -d '{"event_type":"build","client_payload":{"jenkins_list":'$json_string'}}' \
  "https://api.github.com/repos/coder-chris-git/terraform/dispatches" 




    
      
  
1) You need to create your own repo in Github and clone https://github.com/FabianGosebrink/ASPNETCore-WebAPI-Sample
2) Create one Dockerfile that will build application and run it. 
3) Create dockercompose file that will inlude build (use local build context) and run stages, for local testing purposes, commit this file to repo. 
4) Write your own Azure DevOps build flow using yaml syntax and commit it into your GitHub repo. Build and deploy from the main branch. Build PR (Pull Request). 
5) Although you have multiple options to deploy the dockerized application, your manager heard about Azure App Service and knows that you have Terraform code for that. You should determine whether it's necessary to use the old Terraform code, Terraform code with modified configuration, or choose another platform and write Terraform code for it. Although you should write Terraform configuration, there's no requirement to implement CI/CD for it (but you can use your previous pipelines to address this and bring additional value).






*create new branch feature/networks*
*make change to tf files to create pr and start ci proccess*

![Моє фото](/images/addnet.png)

start ci
![Моє фото](/images/prandpp.png)

complete ci and able to merge and start deploy
![Моє фото](/images/cicompl.png)


*check git*
![Моє фото](/images/gitcompl.png)

*merge and start cd*

![Моє фото](/images/cdcompl.png)

![Моє фото](/images/depl.png)

![Моє фото](/images/deepcent.png)


![Моє фото](/images/get.png)

![Моє фото](/images/post.png)

![Моє фото](/images/id.png)

















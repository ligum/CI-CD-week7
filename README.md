![image](https://bootcamp.rhinops.io/images/cicd-pipeline.gif)
# CI-CD PROJECT
![image](https://bootcamp.rhinops.io/images/azure-pipelines.png)

## Introduction
For the last few weeks we have been using terraform to provision the infrastructure of our application and we are using ansible to automate the deployment process, which is quite respectable but not enough. This week we will finish automating the entire process by using CI/CD methodologies to orchestrate the use of both tools and deploy the changes made to the code continuously and automatically.

## Project Overview
This week’s project consists of using Azure Pipelines to configure a complete CI/CD pipeline for the WeightTracker application that includes building the application and deploying it into (an existent) infrastructure. As a bonus we are going to create an additional CI/CD pipeline to automate the infrastructure updates when our Terraform code changes.

![image text](https://bootcamp.rhinops.io/images/project-cicd.png)
## Goals
Create an Azure DevOps Organization

Create a CI Pipeline using Azure Pipelines (preferably using yaml)

Use Azure Artifacts to store your build Artifacts

Create a CD Pipeline using Azure Release Pipelines

Configure your CD pipeline to deploy to Staging using Continuous Deployment

Configure your CD pipeline to deploy to Production using Continuous Deployment

CI pipeline should trigger automatically on every commit

## Considerations

You can store your source code in Github, Azure Repos or both

It will be easier for you if your terraform source code is stored in its own repository

It will be easier for you if your ansible source code is stored in its own repository

Use the Ansible playbooks from the last week to deploy the application

## Expected Result

Full CI/CD pipeline that automates the process of building and deploying the application in a pre existent infrastructure

In case of making a change to the code and pushing it, it will be automatically deployed to the Staging environment

Deployment to production must consist of a single click operation (manual approval)

## Bonus

Create a CI/CD Pipeline for the infrastructure (in the way you consider best)

To Complete this task we have to make 4 previous steps :

App : https://github.com/ligum/node-weight-tracker-week3

Azure : https://github.com/ligum/azure-cloud-week4

Terraform : https://github.com/ligum/terraform-week5

Ansible : https://github.com/ligum/ansible-week6

# Terraform Cloud for Business Getting Started Webinar

## Agenda

1. Accessing Terraform Cloud for Business
2. Creating an organization
3. Connect to a Version Control System
4. Create a Workspace
5. Trigger Initial Run
5. Modify infrastructure
6. Destroy infrastructure

### Tasks

#### Accessing Terraform Cloud for Business

1. TFCB can be accessed by navigating to https://app.terraform.io
2. Sign in using existing email/password or register for an account

#### Create Organization/Add VCS/Create Workspace/Queue Plan

1. Select create an organization
2. Provide org name and click create organization
3. Select Github.com for VCS and follow GH prompts
4. Select workspace
5. Click Create
6. Navigate to workspace
7. Navigate to variables
8. Add AWS credentials to environment variables and save
9. Queue and apply plan

#### Modify infrastructure

1. Navigate to code editor and modify VPC resource
    1. For this example, adding an additional tag
        Change from:
        ```
        resource "aws_vpc" "main" {
            cidr_block = "10.0.0.0/16"

            tags = {
            Owner = "cbeck"
            }
        }
        ```
        To:
        ```
        resource "aws_vpc" "main" {
            cidr_block = "10.0.0.0/16"

            tags = {
            Owner = "cbeck"
            Name = "tfcb-webinar"
            }
        }
        ```
2. Commit change and push to Github
3. Navigate back to browser and return to TFCB interface
4. Navigate to workspace and then open runs
5. The plan should have queued and you need to select confirm and apply

#### Delete Infrastructure

1. Navigate to the workspace and select the Settings drop down menu
2. In the drop down menu select Destruction and Deletion 
3. Select Queue destroy plan
4. Enter the workspace name `tfcb-getting-started-webinar` and click Queue Destroy Plan
5. Select Delete from Terraform Cloud
6. Enter the workspace name `tfcb-getting-started-webinar` and click Delete workspace
        
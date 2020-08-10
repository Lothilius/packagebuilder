# Package Builder on Docker

## Docker Instructions
### To Build an Image
docker build -t spfy_app:latest .

### To Run a container
 docker run -P -h spfy_app01 --env-file env.list --name spfy_app01 -d spfy_app:latest 



# App Description
Django application for listing all Metadata for a Salesforce Org. This app is designed to run on Heroku, but could be amended to run locally or any desired server

![App Screenshot](packageBuilder.PNG)


#Python
1) Install Python version 2.7
2) Install virtualenvwrapper-win if you have installed different Python version 

#Salesforce

3) Login in Salesforce Org in Lighting Experience
4) Setup> Apps> App Manager > New Connected App
  4.1 Complete required fields
  4.2 Enable OAuth Settings checked
  4.3 Save
  4.4 From API (Enable OAuth Settings) you will need Consume Key, Consumer Secret, Callback URL (heroku app url), API version

###Errors
If the deployment fails you will need to complete the following steps from your Heroku Account
8) Config Vars:{ProjectName} >Settings> Config Vars> add the following Vars
   DISABLE_COLLECTSTATIC = 1
   SALESFORCE_API_VERSION = Your ORG API VERSION
   SALESFORCE_CONSUMER_KEY = take it from the the step 2.4  "Consume Key"
   SECRET_KEY = take it from steps 2.4 "Consumer Secret"
9) Resources: add Heroku Postgress Database or Alternative DB and Heroku Redis both are free but you need to config a credit card.

###Logs
-- To-do

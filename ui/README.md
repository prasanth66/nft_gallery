## About The Project
---------------------
### Introduction 
 It is a sample project for nextjs. which can be used as a based for new project
### Requirements 
1. NVM: v0.38.0
2. NPM: v8.13.2
3. Nodejs: v16.15.1
4. docker and docker-compose latest
### steps to start api
1. After cloning update name, description and version with your project details in package.json
2. .env.dev and .env.test should be updated with your configuration.
3. from the root directory execute ./start_ui.sh dev

### Flagsmith
#### Agenda: Feature to enable PM to toggle project feature in application
#### Recommend use:
1. A/B Testing
2. To Release Risk Feature (Like payment)
#### Do/Dont's:
1. Dont build everything as toggle.
2. deleting toggle once you are confident with the feature after release.
#### Reference site: https://flagsmith.com/

### Maintainers : yash@napses.com , priyansh.jain@napses.com
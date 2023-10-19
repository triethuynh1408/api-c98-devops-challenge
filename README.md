# DevOps Challenge - API upload/list/delete images

- Change file name from `sample_nodemon.json` to `nodemon.json` and edit env values

# Run the app

1. `npm install`
2. Rename `sample_nodemon.json` > `nodemon.json`
3. Open `nodemon.json` > Replace all `<_xxxx_>` with valid credentials
4. `npm start`
5. Import file `file upload.postman_collection.json` and test on local machine or replace `localhost:4000` by URL API Gateway

# Dockerize

1. Use ECR repo was created from Terraform, build and push into it

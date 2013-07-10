make a new rails todo-app!

just create your rails app inside this folder
we're going to use the default sql

include an about page and a contact page.

Todo Homework

Objectives:

Practice creating a rails CRUD todo using our Dawgs app as a guide.
Story

A user should be able to see a todo list
A user should be able to add new todo task
A user should be able to view detailed information about a todo task
A user should be able to edit information about a todo task
A user should be able to delete a todo task
Activity

Write a rails application that fulfills the needs of the user story listed above.
Create a todo controller and appropriate views
The application should store information about the todo tasks in a database using active record
Use what you know to write an ActiveRecord migration and tie it to the modle
(Hint: Create a todo model that inherits from ActiveRecord::Base)
rails c can be used to add a new todo item from the console to get you started for testing views.
Commit frequently
Setup and hints!

We've already added a basic rails app (by using rails new ...) and configured it for use with postgres, so you don't have to do this agian.
We included the nice debugging gems that Phil likes
Of course, run bundle to setup all the gems
To create the database, run rake db:create
Do not use scaffolding.
rails c will drop you into a console and let you explore your app from the inside.
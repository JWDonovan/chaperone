# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database - Using ActiveRecord with Postgresql
- [x] Include more than one model class (e.g. User, Post, Category) - Destinations and Users are my two models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - Users have many Destinations
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Destinations belong to Users
- [x] Include user accounts with unique login attribute (username or email) - My user model has a unique ActiveRecord validation as well as a unique email index constraint at the database level.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Destinations have /new, /create, /edit, /delete, /update routes
- [x] Ensure that users can't modify content created by other users - Controllers and views verify that users can only modify their own content and are not even presented with the option to do so.
- [x] Include user input validations - My validations were done with a combination of HTML form validations, ActiveRecord validation, and custom validations done in the controllers and views.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - Validation failures are done via the sinatra-flash gem.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
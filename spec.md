# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app Sinatra frames was used along with the Corneal gem for the schaffold

- [x] Use ActiveRecord for storing information in a database I used ActiveRecord for its methods the way it has been explained in the curriculum

- [x] Include more than one model class (e.g. User, Post, Category) There is a User model and a Game model
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) A user has many games 

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) Games belong to a user

- [x] Include user accounts with unique login attribute (username or email)A user must sign up with a user name that no other user has.

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying The gane model has complete crud functionality.

- [x] Ensure that users can't modify content created by other users A user can only create, update, and destroy their own content and this can only be done if they are logged in.

- [x] Include user input validations A user must sign in using their username and password.

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) Simple custom errors have been implemented.

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

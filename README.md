# README
There is no master.key. This means, passwords will not be decrypted.

You should probably create a new project from this.
It will break if you attempt to merge. 
Also, if you're using mac, edit the socket in the database.yml
and put in your password. Then run:
* rake db:create
* rake db:migrate
* rails s

Then create an account with
localhost:3000/admin and then click "sign up"

Then create churches, users, etc. 

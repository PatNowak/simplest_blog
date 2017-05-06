heroku git:remote -a $1
"heroku app: $1 succesfully added"
heroku buildpacks:add "https://github.com/HashNuke/heroku-buildpack-elixir.git"
heroku buildpacks:add https://github.com/gjaldon/heroku-buildpack-phoenix-static.git
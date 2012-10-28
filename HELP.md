## Rails

- Create new rails project  
`rails new <name>`

- Generate Scaffold (Model, Controller, Methods, etc.)  
`rails generate scaffold <modelname> [<property>:<type> <property>:<type>]`

- Generate / Destroy Controller + Methods  
`rails generate controller <name> [<method> <method>] [--no-test-framework]`  
`rails destroy controller <name> [<method> <method>]`

`--no-test-framework` will skip the generation of default RSpec tests for the controller

- Generate Integration Tests  
`rails generate integration_test <controller name>`

- Generate / Destroy Model  
`rails generate model <modelname> [<property>:<type> <property>:<type>]`  
`rails destroy model <modelname>`

- Start local Web Server  
`rails server`

## Database

- Migrate Database Changes  
`rake db:migrate`

- Rollback single Database migration step  
`rake db:rollback`

- Rollback to the first Database version  
`rake db:migrate VERSION=0`

## Git

- Add content to Git  
`git add .`

- Commit added content to Git  
`git commit -m "<message>"`

- Push committed content to GitHub  
`git push origin <branch>`

## Heroku

- Install Heroku  
`gem install heroku`

- Creating local SSH Key for Heroku  
[https://devcenter.heroku.com/articles/keys#adding_keys_to_heroku](https://devcenter.heroku.com/articles/keys#adding_keys_to_heroku)  
 - If windows complains about failing creation:  
[http://stackoverflow.com/a/2840909/660428](http://stackoverflow.com/a/2840909/660428)

- Add ssh keys to Heroku  
`heroku keys:add`

- Initialize Heroku Page  
`heroku create --stack cedar`

- Push committed content to Heroku  
`git push heroku <branch>`

- Open Heroku Site after push  
`heroku open`

- Login into Heroku  
`heroku login`

- Adding a heroku remote (after login)  
`git remote add heroku git@heroku.com:<name of heroku slot>.git`

(actually it would be `git remote add heroku git@heroku.com:stormy-bayou-8492.git`)

## Rails Bundler

- Installing Gems defined in Gemfile  
`bundle install`

- Starting Guard + Spork service (unit testing like ncrunch, already configurated)  
`bundle exec guard`

- Start unit test by hand  
`bundle exec rspec [<full or partial path>]`

## Tools

- Good Windows Console Replacement  
[http://code.google.com/p/conemu-maximus5/](http://code.google.com/p/conemu-maximus5/) [http://alternativeto.net/software/conemu/](http://alternativeto.net/software/conemu/)

- Nice text editor  
[http://www.sublimetext.com/](http://www.sublimetext.com/)

- Markdown editor  
[http://markdownpad.com/](http://markdownpad.com/)

## Troubleshooting

- `different prefix: "D:/" and "X:/....."`
Just use the command line `bundle install --path .bundle` as described [here](https://github.com/thomas-mcdonald/bootstrap-sass/issues/96#issuecomment-7355131)  

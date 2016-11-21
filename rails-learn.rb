RVM
	rvm = bundler
	source ~/.rvm/scripts/rvm

	gemsets
	https://rvm.io/gemsets/basics
	Auto tab completion not working   DBT
	rvm reinstall 1.9.3 --with-gcc=clang 	CHECK BEFORE INSTALL.
	eg- rvm gemset list
		rvm gemset list_all
		rvm gemset create rails410 rails210
		rvm 2.1.1@rails410 ; rails --version
		gem: --no-rdoc --no-ri


		IMP -- understand the difference
		rails 4.2  26gems installed
		rails 2.1  6gems    


		rvm gemset copy default test_project
		rvm gemset use test_project
		rvm use 2.0.0@test_project
		gem install tictactoe -v 0.0.4
		rvm gemset delete test_project

		rvm get head && rvm reload
	Automate environment 

	Q.Things that you need to decide when you create a gem.


RAILS 
	FAQ
	Rails in the server logs is generating huge logs. I need a precise one.
	Also with routes and the http requests acquantaince.
	We normally miss the tests -- which we feel is an additional thing.

	table - gives info over conventions
	http://rails-3-2.railstutorial.org/book/sign_up#table-RESTful_users
	
	rails new first_app
	rails server
	rails console

	after assembling gems, 
	bundle update
	
	bundle install
	bundle install --without production

	bundle exec rake db:migrate
	bundle exec rake db:rollback
	bundle exec rake db:test:prepare

	rake traceroute   NEED TO KNOW 

	NEED TO KNOW AND ADVANCE THE META DATA.---------------
	necessity of annotate gem.  Adds the comments.

	
	NOTE
	Scaffolding doesnt create the foreign keys for us.
	Controller in CamelCase - as class takes CamelCase + Plural

	rails generate controller FooBars baz quux
  	rails destroy  controller FooBars baz quux

  	rake db:migrate
  		 db:rollback
  		 db:migrate VERSION=0

  	bundle exec rspec spec/requests/static_pages_spec.rb

  	http://stackoverflow.com/questions/14072880/whats-the-use-of-gemfile-in-rails
	https://infinum.co/the-capsized-eight/articles/top-8-tools-for-ruby-on-rails-code-optimization-and-cleanup
	purifycss
	http://rails-bestpractices.com 		few only
	http://www.rubular.com/				REGEX.

	Models --
	.new vs .create   Models
	Model.find_by_<col_name>("..")

	user = User.new()
	user.save 
	user.valid?
	user.errors.full_messages
	user_with_same_email.valid?

	rails generate migration add_index_to_users_email
	NEED TO KNOW MORE ON INDEXES. find by on interview questions.
	ALso doesnt create the index syntax.

	def change
      reversible do |dir|
      	change_table :products do |t|


    rails generate migration AddPartNumberToProducts part_number:string:index
    rails generate migration RemovePartNumberFromProducts part_number:string

    passowrd CHECK
    these virtual attributes are implemented automatically by has_secure_password

    current_user = user.authenticate(password)
    IMP section 6.3

    source code for has_secure_password 
    https://github.com/rails/rails/blob/master/activemodel/lib/active_model/secure_password.rb

    if Rails.env.development?
    useful in debugging env 
    rails console test 	makes us into test env.
    rails server --environment production

    bundle exec rake db:migrate RAILS_ENV=production    IMP FOR production ONE.
    
    bundle exec rake db:reset
    	bundle exec rake db:test:prepare

    chapter 7 
    localhost:3000/users/1 works not 1.json or 1.xml 
    https://github.com/thoughtbot/factory_girl

    NEED TO KNOW config/environment/..

    http://en.gravatar.com/
    http://automattic.com/

    http://www.opinionatedprogrammer.com/2011/02/capybara-and-selenium-with-rspec-and-rails-3/
    capybara and capybara-webkit
    rspec vs capybara vs cucumber
	visit signup_path 			capybara used in this syntax.
	fill_in "Name", with: "Example User"
	.
	.
	.
	click_button "Create my account"

	expect { click_button "Create my account" }.not_to change(User, :count)
	CHECK

	FORMS
	The problem of including the javascript within form.
	Firebug
	
	CHECK
	include ActionView::Helpers::TextHelper
	pluralize(2, "test")

	Authenticity token - csrf token
	http://stackoverflow.com/questions/941594/understanding-the-rails-authenticity-token



	FAQ
	Warning- Validations needs to be run on data thats uploaded as well.
	gem install vs gemfile
	bundle exec rake vs rake NO PROB WHEN RVM USED
	rails generate rspec:install  DIDNT UNDERSTAND 
	rails generate controller StaticPages home help --no-test-framework 
		with methods or actions home, help 
  	BDD vs TDD     Rspec vs cucumber

  		Why should the behaviour be function wise? Neither it should be revisitng and completing the actions repeatedly.
  			Eg- a flow that has 2 branches should be able to take up to the merge point of both of them.
  			REDUCTION OF REPETITION.	
  			owtf
	http://rakeroutes.com/blog/increase-rails-performance-with-database-indexes/
  	http://weblog.rubyonrails.org/2011/12/6/what-s-new-in-edge-rails-explain/
  	https://everydayrails.com/


	Deployment
	https://www.phusionpassenger.com



	rails generate integration_test authentication_pages

	before_save vs before_create in sessions... chapter 8

	its(:remember_token) { should_not be_blank }
	it { @user.remember_token.should_not be_blank } 

	IMP IMP ....... NEED TO CHECK RESEARCH.BUT BEING AN API, IS IT HTML?
	http://api.rubyonrails.org/v3.2.0/classes/ActiveRecord/Persistence.html#method-i-save

	skipped the part of cucumber NEED TO CHECKß

	REFERENCES
	http://tutorials.jumpstartlab.com/topics/better_views/erb_and_haml.html
	react rails...CHECK
	react d3

	attr_accessible - makes the attribute to be changed from request made by user.
	Hence admin attribute is not included.

	https://github.com/rails/strong_parameters
	https://www.quora.com/Rails-4-strong-params-error-no-implicit-conversion-of-Symbol-into-String

	CHECK
	rspec for controllers or the integration_test related.

	Associations
	belongs_to/has_many

	Not Micropost.create, user.microposts.create
	Check the mass assignment security error

	faker CHECK IMP

	config NEED TO READ. 


GIT
	git config --global core.editor "subl -w"
	git config --global user.name "Your Name"
	git config --global user.email your.email@example.com
	git config --global alias.co checkout

	REFERENCES
	https://git-scm.com/book/en/v2



DOCKER

	webinars
	https://www.docker.com/products/resources/webinars
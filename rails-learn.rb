RVM
	rvm = bundler
	source ~/.rvm/scripts/rvm

	gemsets
	https://rvm.io/gemsets/basics
	Auto tab completion not working   DBT
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

	
	rails new first_app
	rails server
	rails console

	after assembling gems, 
	bundle update
	
	bundle install
	bundle install --without production

	bundle exec rake db:migrate

	rake traceroute   NEED TO KNOW 

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


	FAQ
	Warning- Validations needs to be run on data thats uploaded as well.
	gem install vs gemfile
	bundle exec rake vs rake NO PROB WHEN RVM USED
	rails generate rspec:install  DIDNT UNDERSTAND 
	rails generate controller StaticPages home help --no-test-framework 
		with methods or actions home, help 
  	BDD vs TDD     Rspec vs cucumber


	Deployment
	https://www.phusionpassenger.com



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
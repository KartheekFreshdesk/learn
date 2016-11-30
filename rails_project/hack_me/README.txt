

Alternative way of doing or making it simple.

	WAYS TO CHECK----
	https://www.cloudboost.io/
	https://segment.com/blog/cross-database-joins-sql-periscope/
	alternatives to amazon redshift.

	Inbuilt gem for the session management or authentication.
	splinter.readthedocs.io  for django. CHECK.

	Django transitions. Django fsm and django river

	Dependency graphs for web developers. 

	puts "\n\current_user.methods : "+ current_user.methods.sort.join("\n").to_s+"\n\n"

	http://blog.testdouble.com/posts/2014-11-04-healthy-migration-habits.html

	has_many through and source..imp
	has_many through -- the way for accesssing the join table.

	IMP has_and_belongs_to_many
	https://coderwall.com/p/i4c8mg/has_and_belongs_to_many-habtm-associations-in-rails-4  IMP WITH VERSION.
	http://stackoverflow.com/questions/6561330/rails-3-has-and-belongs-to-many-migration
	https://pardeepdhingra.wordpress.com/category/ruby-on-rails/rails3/

	To make nested forms easy, use cocoon.ALso check with formtastic Boostrap.
	https://github.com/mjbellantoni/formtastic-bootstrap

	This is interesting to see this query from Find the game information(name and score) for a person.

	Check both the options of using with as and correlated queries.
	http://www.justinweiss.com/articles/should-you-use-scopes-or-class-methods/  IMP.---READ

	class method vs scope.. ReFACTORING.
	

	MIGRATIONS - 
	rake db:drop db:create db:migrate
	rake db:migrate:redo

	rails destroy_all vs rails reset vs rails delete_all vs rake db:rollback.

	Efficient way of destroy_all is delete_all

	<!-- IMP -->
    <%= render partial: 'played_games/played_game', collection: @user.played_games || "There are no games played." %>
    CHECK THE CAUTION.

	KNOWN_____
	I have mistaken to interpret the situation of db design. Hence, started to make a game_player model.
	The played_games and current_game_plays remain same.

	DISCUSSION ------
	The width is set to 940 but it has to be responsive. JUST CHECK. NEED TO DISCUSS.

	SESSIONS UNDERSTANDING.

	THE REFACTORING OF STATIC PAGES AS ITS CONFUSING WHEN THE PERSON IS ALREADY IN SESSIONS.
	
	THE FACTORING OF USER_AND_SCORE.HTML AND FACTORING OF LEADER_BOARD.HTML

	THE FACTORING TO USE THE GAMES_HELPER
	IS IT RIGHT TO INCLUDE ALL THE HELPERS IN APPLICATION_CONTROLLER.
	MAKING IT TO BE JSON.	

	KNOW WHEN TO PLACE THE HTMLS IN SHARED.

	KNOWING ABOUT THE LINK_TO

	WHERE TO STORE THE GLOBAL CONSTANTS?

	DANGERS OF HAS_AND_BELONG_TO MANY.
	http://blog.flatironschool.com/why-you-dont-need-has-and-belongs-to-many/

	http://stackoverflow.com/questions/1089892/how-do-i-remove-a-single-habtm-associated-item-without-deleting-the-item-itself

	https://github.com/matthuhiggins/foreigner
	foreign table creation rails vs associations rails

	The two names references the same table name for column 		DONE--
	for eg first_person, second_person references the person

	users/index.html.erb   The render function with paginate.

	When to use @microposts and '_micropost.html.erb'

	When a scope is used, the list of game_id's can be fetched and from that, we can fetch the game details.	

	The player_played_game_details.html.erb refactoring ?

	Check the sql query performances and query execution plan when query is given from rails.
	http://stackoverflow.com/questions/1555471/what-tools-are-available-to-test-sql-statement-performance
	

	YET TO BE DONE -------
	FILTERS.
	PAGINATE FOR THE XML OR JSON RESPONSE.
	CONSTANTS.


	NEED THE RELINKING TO THE GAME PLAYED PREVIEW


	THE DATABASE IS DESIGNED FOR THE PLAYER.GAMES  -- THAT ARE ALREADY DONE.
	BUT WE CANT GET ALL THE PLAYERS GAMES (THE ONES THAT ARE GOING ON) DIRECTLY THROUGH RELATIONSHIP. 

	THE TRANSACTIONS ON MODELS.

	LEARNING-----
	THE HASH CANT BE ACCESSSED AS ATTRIBUTE. 



#NEED TO CHECK THE FUNCTIONING OF SESSIONS. HENCE THE HELPERS.
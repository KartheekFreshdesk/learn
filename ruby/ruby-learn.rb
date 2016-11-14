RUBY 
	Codeacademy is not complete.
	Needs stress on Regular Expression.

MAJOR CHANGE THAT HAS TO BE DONE -
	SHORT STORIES ARE BETTER THAN A2A.


References
	http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html#2.-variables
	https://www.tutorialspoint.com/ruby
	http://www.rubymonk.com

Advanced References
	http://ruby-doc.org/core-1.9.3/Integer.html#method-i-even-3F

STYLE GUIDE REFERENCES
	https://github.com/bbatsov/ruby-style-guide (needs addition NEED TO BE READ) +  
	NOT KNOWING WHEN TO READ THE STYLE GUIDE. ALSO TRYING TO SYNC BETWEEN 2 IS BIT DAUNTING TASK.

	ADDITIONALS
	gem that checks for ruby coding convention on editor - Google Search 
		Rubocorp
	IDE
	Enhancing the debugging capabilities - Visual Studio. Ruby visual studio Google Search
	Parallels VM check
	Netbeans or rubymine

Few blogs- 			NEEDS TO CHECK PRIORITY OF INCLUSION
	simpleror.wordpress
	Best practices Ruby - Google search
	http://batsov.com/articles/2014/02/17/the-elements-of-style-in-ruby-number-13-length-vs-size-vs-count/
	http://ruby-for-beginners.rubymonstas.org/conditionals/nothing_and_truth.html  
	http://stackoverflow.com/questions/5367114/what-is-a-simple-elegant-way-in-ruby-to-tell-if-a-particular-variable-is-a-hash  
	http://confreaks.tv/videos/rubyconf2010-zomg-why-is-this-code-so-slow

	http://learn.onemonth.com/ruby-vs-python

FAQ
	include vs require vs load - 				NEED To DO  
		http://stackoverflow.com/questions/318144/what-is-the-difference-between-include-and-require-in-ruby


COMMENTS
=begin
this is 
testing
=end

VARIABLES
	lower_case
	$s, or @s different meaning

	link - print  Interpolation
	https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#Interpolation
	https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/


CONTROL FLOW
	
	puts "It's true!" if true

	unless 
	puts "It's true!" unless false

	puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

	case language
	when "JS"
	  puts "Websites!"
	else
	  puts "fail"
	end

	Conditional assignment ||=

	95.upto(100) { |num| print num, " " }
	100.downto(95) { |num| print num, " " }


	<=> know
	few are methods in ruby. Hence can be modified over ovjects

	RUBY IS LAZY - wrong caption. rather short circuiting is correct.
	thing_a || thing_a = thing_b   interesting. KNOWING the practical usecase

	FAQ
	== , ===, .eq?, .equal?
	Boolean operators are equal to logical operators
	and vs && 
	why puts returns nil

		http://www.eriktrautman.com/posts/ruby-explained-conditionals-and-flow-control


LOOPS
	while 
	until NEED TO GET 
	for	i in 1..10 include
	for i in 1...10 exclude
	for i in (0..10).step(2) do
	    puts i

	loop do
		i += 1
		print "#{i}"
		break if i > 5
	end

	next skips certain steps of code.
	for i in 1..5
	  next if i % 2 == 0
	  print i
	end

	(10..100).step(10) do |n|		NEED TO CHECK WITH OBJECT WORKING
	(10..100).each do |n|
	5.times do |i|
	end
	retry and redo 					NEED TO DO



	References
	http://www.eriktrautman.com/posts/ruby-explained-iteration


	FAQ
	The return values when loops are run


ARRAYS

	numbers = [1, 2, 3, 4, 5]

	numbers.each do |item|

	alphabet = ["a", "b", "c"]
	alphabet.push("d") 
	alphabet << "d"

	caption = "A giraffe surrounded by "
	caption += "weezards!"
	caption << "weezards"

	String interpolation majorly used for values that are not strings.
	+ or << or '#{}' can be used for strings 

	methods- 					NEED TO DO
	each
	collect 				my_nums.collect { |num| num ** 2 } # ==> [1, 4, 9]
	first and last
	shuffle

	FAQ

HASHES
	my_hash = { "name" => "Eric",
 	"age" => 26,
  	"hungry?" => true
	}

	my_hash = Hash.new
	my_hash["Stevie"] = "cat"

	my_hash.each { |x, y| puts "#{x}: #{y}" }
	my_hash.each_key { |k| puts k }
	my_hash.each_value { |k| puts k }
	
	my_hash.each do |x, y| 
		puts "#{x}: #{y}" 
	end


	collections style guide for arrays of strings 
	overwriting of values happens on same keys. Hence Set.
	returns nil when either the key is not present or value is nil.  NOT AN ERROR as of other language.

	Default value when key not present is Trady Blix
	my_hash = Hash.new("Trady Blix")


	Writing code for nested hashes.

	SYMBOLS VS STRINGS
				puts "string".object_id gives multiple id''s on multiple times usage. puts :symbol.object_id are immutable. hence the same values.
			They are immutable, meaning they cant be changed once they are created;
			Only one copy of any symbol exists at a given time, so they save memory;
			Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

		Interconversion strings and symbols
		:sasquatch.to_s
		# ==> "sasquatch"

		"sasquatch".to_sym or "sasquatch".intern
		# ==> :sasquatch

		http://ruby-doc.org/core-2.0.0/Symbol.html

	Hash selecting criteria for a condition
	grades = { alice: 100,
	  bob: 92,
	  chris: 95,
	  dave: 97
	}

	grades.select {|name, grade| grade < 97}
	# ==> {:bob=>92, :chris=>95}

	grades.select { |k, v| k == :alice }
	# ==> {:alice=>100}

	http://ruby-doc.org/core-2.0.0/Hash.html

	( == and eq? ) vs === vs equal?
	http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and 		GOOD EXPLANATION

	Hash style guide
	FAQ 
	HASHES SPACE COMPLEXITY		NEED TO DO


METHODS 
	
	SPLAT arguments
	def what_up(greeting, *bros)   

	For instance, if you don't tell a JavaScript function exactly what to return, it'll return undefined. 
	For Python, the default return value is None. 
	But for Ruby, it's something different: Ruby's methods will return the result of the last evaluated expression.
	def check
	    num = [2,1]
	    num.sort!
	    puts num
	end

	check 

	ME
	Suppose you remove puts, then num.sort! will return array. Which is inturn returned but not printed.	DONT BE CONFUSED.

	FAQ
	parameters vs arguments


BLOCKS, PROCS AND LAMBDAS
	Blocks as parameter passing 		NEED TO DO 
	how is blocks passing making it abstract ?
		http://mixandgo.com/blog/mastering-ruby-blocks-in-less-than-5-minutes 
		http://rubylearning.com/satishtalim/ruby_blocks.html
	Blocks and scope - difference from ruby-1.9	


	READ THE BELOW CAAREFULLY. DONT CONFUSE. the parameters of Kim and name are connected to |n| and Eric is not.

	def yield_name(name)
		puts "In the method! Let's yield."
		yield("Kim")
		puts "In between the yields!"
		yield(name)
		puts "Block complete! Back in the method."
	end

	yield_name("Eric") { |n| puts "My name is #{n}." }


	PROCS
	cube = Proc.new { |x| x ** 3 }

	[1, 2, 3].collect!(&cube)

	Procs - get abilities of objects and are reusable

	TEST Procs
	test = Proc.new { # does something }
	test.call 

	FAQ - 
	convert symbols to procs

	LAMBDAS 						NEED TO DO
	def lambda_demo(a_lambda)
	  puts "I'm the method!"
	  a_lambda.call
	end

	lambda_demo(lambda { puts "I'm the lambda!" })


	proc = Proc.new { puts "Hello world" }
	lam = lambda { puts "Hello World" }

	REF-
	lambda explained in simple -  Google search

	LAMBDS VS PROCS 
	ERROR Error is thrown in lambda when wrong arguments are passed.
	RETURN  Second , when a lambda returns, it passes control back to the calling method; 
		when a proc returns, it does so immediately, without going back to the calling method.
	A lambda will behave like a method, whereas a Proc will behave like a block.


SORT
	books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

	def alphabetize(arr, rev=false)
	  if rev
	    arr.sort { |item1, item2| item2 <=> item1 }
	  else
	    arr.sort { |item1, item2| item1 <=> item2 }
	  end
	end




	FAQ
	Check sort in python  gives the idea of default parameters

OBJECTS 
	Well, .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise. 
	[1, 2, 3].respond_to?(:push)

COLLECTIONS
	Normally iteratable objects take on .each method 
	ENUMERABLE OBJECTS, COLLECTIONS 

	CHECK
	collections methods are returning collections 
		for eg: my_array.each { |x| } returns my_array

	FAQ
	enumerable vs concrete classes
	.length vs .size vs .count - http://batsov.com/articles/2014/02/17/the-elements-of-style-in-ruby-number-13-length-vs-size-vs-count/
 
OOP 
	classes have camelcase

	person.methods vs Person.methods - Inspect the methods object
	MyObjectClass.instance_methods
	object.attributes
	p1.instance_variables 
	obj.class.instance_methods(false), where 'false' means that it wont include methods of the superclass
	super(args)
	NO multiple Inheritance

	public, private and protected access control Inheritance NEED TO DO

	  def name
	    @name
	  end
	  
	  def name=(new_job)
	    @name = new_job
	  end

	  class Person
		attr_reader :name  Automatically creates above methods
		attr_writer :name
	    attr_accessor :job Both of above
	  end

	classes 
		instance methods
		class methods 	def self.bar


	class << self mostly used as static method.  NEED TO DO
	http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/
	Style guide def self.method to define singleton method

	MODULES 
	REQUIRE , INCLUDE AND EXTEND
	namespacing or scope resolution ::
	modules are explicitly brought with require. Not all are included already

	class includes module can use those methods. No scope resolution is required.
	Using module into class is called mixin.
	
	module A
		def method1; end
	end
	module B
		def method2; end
	end
	class MultiInheritSample  	- mixin behaviour
		include A, B
	end

	extend mixes modules methods at class level.


	Be careful with @@ in inheritance. 

MISCELLANEOUS-
1.	! modifies the value contained within the variable answer itself. 
	The next time you use the variable answer you will get the results 
	of answer.capitalize
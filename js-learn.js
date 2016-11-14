Javascript
check sitepoint 
	confirm
	prompt
	console.log()
	var divideByThree = function (number) {}; Even normal declaration is going through.
		http://www.w3schools.com/js/js_function_parameters.asp
	function multiply() {
	  return num1 * num2;
	}

	do {
		console.log("I'm gonna stop looping 'cause my condition is " + loopCondition + "!");	
	} while (loopCondition);

	Heterogeneous arrays

	arguments object

	Objects 
		I dont think there is necessity of class.
	var myCar = new Object(); or
	var person = {};
	var person = {
    firstName:"John"
	}
	var someObj = {
	aProperty: value,
	someMethod: function(some, params) { }
	};

	Objects are also called associative arrays. 

	for (var i in obj){};
	or for (var i =0; i < obj.length; ++i){};
	
	using this.properties .

	typeof object
	object.hasOwnProperty("prop-name")
	for(var property in dog) {
	  console.log(property);
	}


	customised constructor
	function Person(name, age) {
	  this.name = name;
	  this.age = age;
	  var bankBalance = 7500; 	 	Private variable
	  this.calcArea = function() {
      	return this.height * this.width;
  	  };
	  var returnBalance = function() {
 	 	return bankBalance;
	  };
	}

	// Let's make bob and susan again, using our constructor
	var bob = new Person("Bob Smith", 30);

	var family = new Array();
	familyp[0] = new Person("", );


	INHERITANCE    NEED TO DO
	prototype sets the methods for the class.
	Penguin.prototype = new Animal();



	String concatenation faster way
	var str = ""
	str += "test"

	http://stackoverflow.com/questions/10415133/hash-keys-values-as-array

	TO THINK ----
	GAME of TiC TAC TOE.






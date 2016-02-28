//: # Chapter 3: Programming with Swift
//: So far we have made a lot of progress. We can already make use of the terminal to issue special commands to our computer, and we've understood how git can help software developers version their source code.
//:
//: Now it's time to actually write some code!
//: Like the previous session, let's not talk so much about it, and let's get our hands on.
//:
//:
//: Disclaimer: because this workshop is aimed towards business people working at a tech startup, I'm going to make some analogies comparing our code with spreadsheets (as in Excel or Google Sheets). So if you're not really familiar with these softwares, I apologize in advance.
//:
//: ## Exercise 1 - Declarations
//: 
//: The code below shows how to store a value in a variable called `my_variable`
var my_variable = 42

//: Declaring a variable is a way to store a value that we can use later. You can think of it as putting a value in a cell on a spreadsheet. You can later reference that value in other places in the code.

var a = 1
var b = 1
var c = 2
let x = 6 // x is constant

var y = a * (x * x) + b * x + c

//: As you can see from the example above, we used the values of variables a, b, c, and x to calculate a 5th variable `y`. Here's another example

var name = "John Doe"
var year_of_birth = 1987
var current_year = 2016
var age = current_year - year_of_birth

let message = "Hello! " + name + ". This year you will be " + age + " years old. "


func parabola(x:Int) -> Int {
    return a * (x * x) + b * x + c
}

for count in -100...100 {
    parabola(count)
}





// Variable
var my_variable = 42
// Constant
let my_constant = 3.1415

// Numbers
let current_year = 2016
let birth_year = 1986
var age = current_year - birth_year

// Strings
let name = "John doe"
let message = "Hello, \(name). You have \(age) years"

// Read and print
print ("🤖: Hello. What's your name?")
var user_name = readLine()!;
print("🤖: What year were you born?")
var user_birth_year = Int(readLine()!)!;
var user_age = current_year - user_birth_year;
var final_message = "🤖: Good to see you, \(user_name). You'll be \(user_age) this year."

print (final_message)

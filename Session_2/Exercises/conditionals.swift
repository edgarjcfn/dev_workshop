// Values
let this_is_true = true
let this_is_false = false

// Operators
// AND, OR, NOT
var has_pizza = true
var has_burger = true
var is_close = true
var is_cheap = true

var anna_preference = has_pizza
var brian_preference = is_close && is_cheap
var creed_preference = has_pizza || has_burger
var richie_preference = !is_cheap

print ("Does Anna want to go? \(anna_preference)")
print ("Does Brian want to go? \(brian_preference)")
print ("Does Creed want to go? \(creed_preference)")
print ("Does Richie want to go? \(richie_preference)")

// Comparison Operators
// >, <, >=, <=, ==, !=
var review_average = 4.5
var is_good_game = review_average >= 4.5
var is_terrible_game = review_average < 1.0
let light_color = "red"
var can_proceed = light_color == "green"
var should_stop = light_color == "red"

// If statement
print ("The light is \(light_color)")
if (can_proceed) {
  print ("Drive safely")
} else {
  print ("Stop right there")
}

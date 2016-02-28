// Arrays
let my_heroes = ["Superman", "Spiderman", "Green lantern"]

for hero in my_heroes {
  print("\(hero) is awesome!")
}

// Ranges
for item in 1...5 {
  print (item)
}

// While
var i = 0
while (i < my_heroes.count) {
  print ("Hello \(my_heroes[i])")
  i++
}

// C-style for Loop
for (var i=0; i < my_heroes.count; i++) {
  print ("Hello \(my_heroes[i])")
}

// files
var files = listFiles("~/Downloads/")
print (files)


#students is an array of strings containing student names
students = [
	"Abdul Hassan",
	"Alan Bridger",
	"Alexander Levin",
	"Ana Nogal",
	"Andrew Harrison",
	"Andrew Hercules",
	"Atilla Mirk",
	"Claudia B",
	"Colin Smif",
	"Daniel Cotler",
	"Ella Schofield",
	"Elena Garone",
	"Sandrine Zhang-Ferron",
	"Tim Scully",
	"Victoria Stepanova",
	"Alex Blease",
]

#print out the student names
puts "The students in my cohort at makers academy are: "
puts "------------"
students.each do |student|
	puts student
end

#Then we print the number of students in the cohort
puts "Overall we have #{students.length} great students!"

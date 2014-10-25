
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

#function to print introductory line/header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

#function to print the names of each student in the cohort
def print(names)
	names.each do |name|
		puts name
	end
end

#function to print the closing lines
def print_footer(names)
	puts "Overall we have #{names.length} great students!"
end

#calling functions to actually execute the code
print_header
print(students)
print_footer(students)




#students is an array of strings containing student names
students = [
	{:name => "Abdul Hassan", :cohort => :october},
	{:name => "Alan Bridger", :cohort => :october},
	{:name => "Alexander Levin", :cohort => :october},
	{:name => "Ana Nogal", :cohort => :october},
	{:name => "Andrew Harrison", :cohort => :october},
	{:name => "Andrew Hercules", :cohort => :october},
	{:name => "Atilla Mirk", :cohort => :october},
	{:name => "Claudia B", :cohort => :october},
	{:name => "Colin Smif", :cohort => :october},
	{:name => "Daniel Cotler", :cohort => :october},
	{:name => "Ella Schofield", :cohort => :october},
	{:name => "Elena Garone", :cohort => :october},
	{:name => "Sandrine Zhang-Ferron", :cohort => :october},
	{:name => "Tim Scully", :cohort => :october},
	{:name => "Victoria Stepanova", :cohort => :october},
	{:name => "Alex Blease", :cohort => :october},
]

#function to print introductory line/header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

#function to print the names of each student in the cohort
def print(students)
	students.each do |student|
		puts "#{stuent[:name]} (#{student[:cohort]} cohort)"
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



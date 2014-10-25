#students is an array of strings containing student names
=begin
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
=end



def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create an empty array
	students = []
	#get first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => :october}
		puts "Now we have #{students.length} students"
		#get another name from the user
		name = gets.chomp
	end
	#return the array of students
	students
end


#function to print introductory line/header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

#function to print the names of each student in the cohort
def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

#function to print the closing lines
def print_footer(names)
	puts "Overall we have #{names.length} great students!"
end

#calling functions to actually execute the code
students = input_students
print_header
print(students)
print_footer(students)



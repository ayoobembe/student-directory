
@students = [] 

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create an empty array
	#students = []
	#get first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		@students << {:name => name, :cohort => :october}#hash
		puts "Now we have #{@students.length} students"
		#get another name from the user
		name = gets.chomp
	end
	#return the array of students
	#students
end


#function to print introductory line/header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

#function to print the names of each student in the cohort
def print_students_list
	@students.to_a.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

#function to print the closing lines
def print_footer
	puts "Overall we have #{@students.to_a.length} great students!"
end


def print_menu
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def interactive_menu
	#students = []

	loop do
	#print the menu and ask the user what to do
		print_menu
	#print the input and save it to a variable
		selection = gets.chomp
	#do what user has asked based on selection
		case selection
			when "1"
				@students = input_students
			when "2"
				show_students
			when "9"
				exit #this would cause program to terminate
			else
				puts "I don't know what you meant. Please try again."

		end
	end
end

#calling functions to actually execute the code
interactive_menu




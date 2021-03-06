
@students = [] 

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


def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#create an empty array
	#students = []
	#get first name
	name = STDIN.gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		@students << {:name => name, :cohort => :october}#hash
		puts "Now we have #{@students.length} students"
		#get another name from the user
		name = STDIN.gets.chomp
	end
	#return the array of students
	#students
end


def print_menu
		puts "1. Input the students"
		puts "2. Show the students"
		puts "3. Save the students to students.csv"
		puts "4. Load the students from file"
		puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end


def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when "4"
		load_students
	when "9"
		exit #this would cause program to terminate
	else
		puts "I don't know what you meant. Please try again."
	end
end

def interactive_menu
	loop do
	#print the menu and ask the user what to do
		print_menu
		process(STDIN.gets.chomp)
	end
end


def save_students
	#open the file for writing
	file = File.open("students.csv", "w")
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name],student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(",")
		@students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end

def try_load_students
	filename = ARGV.first
	return if filename.nil?
	if File.exists?(filename)
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else
		puts "Sorry #{filename} does not exist"
		exit
	end
end



#calling functions to actually execute the code
try_load_students
interactive_menu




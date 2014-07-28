require './lib/task.rb'
require './lib/list.rb'

@lists = []
# @task_list = {}

def main_menu
  loop do
    puts "Press A to add a list, L to display current lists, X to exit"
    menu_choice = gets.chomp.downcase
    if menu_choice == 'a'
      add_new_list
    # elsif menu_choice == @lists[@i]
    #   add_new_task
    elsif menu_choice == 'l'
      display_list
    elsif menu_choice == 'x'
      puts "Good bye"
      exit
    else
      puts "Try again"
    end
  end
end

def add_new_list
  puts "Enter the list name: "
  user_inputted_list = gets.chomp.downcase
  @lists << List.new(user_inputted_list)
end

def display_list
  puts "Here are you list items: "

  @lists.each_with_index do |list, index|
    puts "#{index + 1}. #{list.name}"
  end
end

def task_menu
end


main_menu

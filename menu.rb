require './lib/task.rb'
require './lib/list.rb'

@lists = []
@tasks = []
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
      list_choice
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

def list_choice
  puts "Here are you list items: "
  @lists.each_with_index do |list, index|
    puts "#{index + 1}. #{list.name}"
  end
  puts "Enter the list item number to manipulate"
  @list_num = gets.chomp
end

def add_task_item
  puts "add a task for your list item: "
  @user_inputted_task = gets.chomp
  @tasks << Task.new(user_inputted_task)
end

def task_menu
end


main_menu

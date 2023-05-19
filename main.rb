#!/usr/bin/env ruby

require './app'

def show_menu
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def select_option(selected)
  if selected == '1'
    app.list_all_books
  elsif selected == '2'
    app.list_all_people
  elsif selected == '3'
    app.create_person
  elsif selected == '4'
    app.create_book
  elsif selected == '5'
    app.create_rental
  elsif selected == '6'
    app.list_all_rentals
  elsif selected == '7'
    puts 'thank you for using this app!'
    return
  end
end

def main
  app = App.new
  puts 'Welcome to School Library App!'
  loop do
    show_menu
    selected = gets.chomp
    select_option(selected)
  end
end

main

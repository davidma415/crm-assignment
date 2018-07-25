require_relative 'contact'

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter the first name: '
    first_name = gets.chomp.downcase

    print 'Enter the last name: '
    last_name = gets.chomp.downcase

    print 'Enter email address: '
    email = gets.chomp.downcase

    print 'Enter a note: '
    note = gets.chomp.downcase

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    print 'Enter the first name of the contact you would like to update: '
    name = gets.chomp.downcase

    print 'Please enter what you would like to change: '
    attribute = gets.chomp.downcase

    print 'Please enter the new value: '
    value = gets.chomp.downcase

    contact = Contact.find_by('first_name', name)
    contact.update(attribute, value)
  end

  def delete_contact
    
  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end

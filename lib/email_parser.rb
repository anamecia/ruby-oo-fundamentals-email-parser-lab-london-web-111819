# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    attr_accessor :emails_addresses 

    def initialize(emails_addresses)
        @emails_addresses = emails_addresses
    end


    def parse 
      array1 = @emails_addresses.split(' ')
      list_of_emails =[]
      array1.each do |sublist|
        sublist.split(',').each do |email|
            list_of_emails << email
        end
      end
      list_of_emails.uniq
    end 
end 



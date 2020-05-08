# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
   attr_accessor :email

   def initialize(emails)
     @email = emails
   end

   def parse
     email_array = @email.split(/[, ]/).uniq #string objects in ruby have a method called split, it can cut up a string into pieces along a pre-defined string or regex, returning an array of smaller strings.
     email_array.reject! {|element| element.empty?} #reject returns a new array containing the items in self for which the given block is not true. #empty? is a standard Ruby method on some objects like Arrays, Hashes and Strings. Its exact behaviour will depend on the specific object, but typically it returns true if the object contains no elements.
     email_array
     #binding.pry
   end
end

# Use the Premailer library to do the heavy lifting
require 'premailer'

# Assign the template we're going to use to a variable
premailer = Premailer.new('src/template.html', :warn_level => Premailer::Warnings::SAFE)

# Render a text-only version of the email
File.open("dist/email.txt", "w") do |fout|
  fout.puts premailer.to_plain_text
end

# Render the inlined HTML version
File.open("dist/email.html", "w") do |fout|
  fout.puts premailer.to_inline_css
end

# Output any warning that occur to the console
premailer.warnings.each do |w|
  puts "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}"
end

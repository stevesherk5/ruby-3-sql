# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salesguy = Salesperson.new
salesguy["first_name"] = "Steve"
salesguy["last_name"] = "Sherk"
salesguy["e-mail"] = "steve@gmail.com"
salesguy.save

salesguy = Salesperson.new
salesguy["first_name"] = "Sofia"
salesguy["last_name"] = "Gonzo"
salesguy["e-mail"] = "sof@gmail.com"
salesguy.save


# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
steve = Salesperson.find_by({"first_name"=>"Steve"})
steve["phone_number"] = 9376231995
steve.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# sofia = Salesperson.find_by({"first_name"=>"Sofia"})

# puts "#{steve["first_name"]} #{steve["last_name"]}"
# puts "#{sofia["first_name"]} #{sofia["last_name"]}"

salespeople = Salesperson.all
puts salespeople.inspect 

for salesperson in salespeople 
    puts "#{salesperson["first_name"]} #{salesperson["last_name"]}"
end



# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

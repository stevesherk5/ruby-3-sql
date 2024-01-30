# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

puts "there are #{Company.all.count} companies"

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_co = Company.new

new_co["name"] = "Apple"
new_co["city"] = "Cupertino"
new_co["state"] = "California"
new_co["url"] = "https://www.apple.com/"
new_co.save

puts "there are #{Company.all.count} companies"

new_co = Company.new

new_co["name"] = "Amazon"
new_co["city"] = "Seattle"
new_co["state"] = "Washington"
new_co.save

puts "there are #{Company.all.count} companies"

new_co = Company.new

new_co["name"] = "Twitter"
new_co["city"] = "San Francisco"
new_co["state"] = "California"
new_co["url"] = "https://www.twitter.com/"
new_co.save

puts "there are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_cos = Company.all

ca_cos = Company.where({"state" => "California"})
puts "Companies in California: #{ca_cos.count}"

# 4. query companies table to find single row for Apple
# apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
# puts apple.inspect

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name"=>"Amazon"})
amazon["url"]="https://www.amazon.com"
amazon.save


# 7. delete a row
twitter = Company.find_by({"name"=>"Twitter"})
twitter.destroy

puts "There are #{Company.all.count} companies"
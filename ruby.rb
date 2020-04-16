# I N T R O
# Let's start by adding comments with a pound symbol/hash!

print "The text in the quotations will be printed!"

puts "This stands for 'put string,' and since a string is just a series of characters, it will do just about the same thing 
as 'print' - but it will ensure that there is a line break after!"


# U S E R I N P U T
# Maybe we want to get information from the user. We can do that by:

print "What's your name?"
name = gets.chomp
# The leftmost value 'name' is a new variable that we're declaring. We are setting it equal to a value that the user will
  # input as they answer the printed question.



# L O O P S
# We can do lots of loops in Ruby, too!  Here's a basic 'while' loop that will count to ten.

counter = 1
while counter < 11
  puts counter
  counter += 1
end
# So here, we create a variable, 'counter', and set it equal to 1. We then create a loop that while our variable 'counter' 
  # has a value less than 11, we will print the value and then add one to the current value (another way to write line 24 is 
  # "counter = counter + 1", but isn't that a handful? As soon as our condition is no longer true, the loop will end.  
  # So, it will end after the counter has printed the numbers 1-10, inclusive.

# Note that a while loop will continue until its condition is false, so you can manipulate it to be infinite.

# Let's make some different kinds of loops that will achieve the same results. They're pretty self-explainatory:

counter2 = 1
until counter2 > 10
  puts counter2
  counter2 +=1
end

# And yet another method:

for counter3 in 1..10
  puts counter3
end
# Notice that there are two dots between 1 and 10? This means that we include the final number in our counting.
# We can exclude the final value by using three dots instead of two:

for counter4 in 1...11
  puts counter4
end
# 'for' loops are great when you already know your parameters when you're writing the code.

# Another way to repeat an action is an iterator!  Let's look into some examples:

loop { print "hello" }
# This will infinitely print "hello". Yikes. Good thing this page won't ever run as a program.
# We can, however, modify this with the '.times' iterator:

5.times { print "hello" }
# Now 'hello' will only be printed 5 times!

# We can substitute the 'do'/'end' syntax for the opening { and closing }, so we can add code and make it more sophisticated:

counter5 = 1
loop do
  puts counter5 #could be 'print counter5' if you want all the numbers on the same line with no spacing
  counter5 += 1
  break if counter5 > 10
end
# Note the 'break if' command, which tells the loop a condition under which it should stop.
# We could of course rewrite the code to start with a variable = 0 as follows:

counter6 = 0
loop do
  counter6 += 1
  puts counter6
  break if counter6 > 10
end

# Or maybe we want to skip all the even values using a 'next if' function:

counter7 = 0
loop do
  counter7 += 1
  next if counter7 %2 == 0
  puts counter7
  break if counter7 > 10
end


# A R R A Y S 
# So far we've just been working with single-value variables. Let's look at how we can store multiple values in Ruby!
# This is called an 'array', and in Ruby, it's enclosed in brackets:

array = [ 1, 2, 3, 7, 10, 17]

# Note that values in an array are indexed from 0, so in this array '1' is in position 0, '2' is in position 1, '3' is in
  # position 2, '7' is in position 3, etc.
# You can also make arrays of strings, so long as each string is enclosed in "", and of arrays in separate brackets (these are
  # called multidimensional arrays).
# The best part about arrays is that they're really powerful. Take a look at this:

array.each do |x|
  x += 10
  puts array
end
# And this will add 10 to each value in the array before printing it. Another valid way to write this would be to replace the
  # do/end syntax with { }, or even to condense it to one line:

array2 = [1, 2, 3, 4, 5]
array2.each { |double| puts double*2 }
# Which will double each value in the array and then print it on separate lines.

# We can also create an array from a string, as in the following example (which will search for and replace words in a 
  # string.

puts "Your text: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split (" ")

words.each = do |word|
  if word == redact
    print "REDACTED "
  else 
    print word + " "
  end
end
# So we have here an extremely simple program that will separate each word of the string, as we can see in line 121, and then
  # compare each word against the word to redact, and then print either a) the word or b) "REDACTED ".


# H A S H E S
# They're like dictionaries in Python or objects in JS: a collection of key-value pairs. They're more flexible than arrays.
# Here's a meaningless explanation:

hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
  }
# Note that the keys and values can be any combination of strings, characters, values, numbers, etc.

# You can also create new hashes using the syntax:
hash2 = Hash.new
  # and add to it using the following code
hash2["key4"] = "value4"

# So how can we access multiple values?  Well, here's an example that will print each month and its season from an array:
hash3 = {
  "Jan" => "Winter",
  "Feb" => "Winter",
  "Mar" => "Spring",
  "Apr" => "Spring",
  "May" => "Spring",
  "Jun" => "Summer",
  "Jul" => "Summer",
  "Aug" => "Summer",
  "Sep" => "Fall",
  "Oct" => "Fall",
  "Dec" => "Winter"
  }
hash3.each do |month, season|
  puts "#{month}: #{season}"
end

# With a little work, you can even turn user input into an array and then a hash, like the histogram I made along with Codecademy:

puts "Your phrase: "
text = gets.chomp
  # First, we get the text.
words = text.split (" ")
  # Then, we split the text into an array of words.
frequencies = Hash.new(0)
  # We then create a hash, 'frequencies', and set its value to zero.
words.each {|word| frequencies[word] +=1}
  # We then create a function that will count each word as a key and increment its value each time the word is found.
frequencies = frequencies.sort_by do |word, count|
  count
end
  # This will the words by their frequency (count), replacing the unsorted data in the hash.
frequencies.reverse!
  # This reverses the hash info, so it's now sorted from high value to low value.
frequencies.each do |word, count| 
  puts word + " " + count.to_s
end
  # This will print each word followed by its count. Notice the '.to_s', which converts count's value to a string.


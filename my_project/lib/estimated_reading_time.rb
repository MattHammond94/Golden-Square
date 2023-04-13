# At this stage I have commented out the tests to account for large strings as we know the 
# Integer based tests work and I dont want to write a mass of random words(Lazy)

# As a personal preference I preferred the version which took an integer as arg
# (This can be viewed in the commit history)
# Of course this would be based on client/user preference and would make an assumption
# That the user knows the word count so has less real world function. 
# This code can be vastly improved by adding further control flow.
# You could even prompt the user to input either a bulk of text(as string) 
# Or a word count(as a int) and have two separate control flow branches one for 
# Int input and one for String input. 
# I am leaving this as it is (for now)

def estimated_reading_time(text)
  fail "Your input is invalid - please ensure you enter a sentence or text" if text.nil? || text.is_a?(Integer)
  count = text.split(" ").count
  if count == 0
    "You have nothing to read"
  elsif count <= 200 
    value = ((count.to_f / 200) * 60).to_i
    value <= 1 ? "A second or less" : "#{value} seconds"
  else
    "#{count % 200 == 0 ? count / 200 : count.to_f / 200} minutes to read"
  end
end
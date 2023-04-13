# At this stage I have commented out the tests to account for large strings as we know the 
# Integer based tests work and I dont want to write a mass of random words(Lazy)

def estimated_reading_time(text)
  fail "Your input is invalid - please ensure you enter a sentence or text" if text.nil? || text.is_a?(Integer)
  count = text.split(" ").count
  if count == 0
    0
  elsif count <= 200 
    "#{((count.to_f / 200) * 60).to_i} seconds"
  else
    "#{count % 200 == 0 ? count / 200 : count.to_f / 200} minutes to read"
  end
end
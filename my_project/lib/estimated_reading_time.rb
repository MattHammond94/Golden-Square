def estimated_reading_time(text)
  fail "You have not entered a valid amount of words" if text.nil? 
  if text == 0
    0
  elsif text <= 200 
    "#{((text.to_f / 200) * 60).to_i} seconds"
  else
    "#{text % 200 == 0 ? text / 200 : text.to_f / 200} minutes to read"
  end
end
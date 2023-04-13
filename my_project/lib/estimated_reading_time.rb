def estimated_reading_time(text)
  fail "You have not entered a valid amount of words" if text.nil? 
  if text < 200 
    (text.to_f / 200) * 60
  else 
    text.to_f / 200
  end
end
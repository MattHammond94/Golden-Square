def estimated_reading_time(text)
  fail "You have not entered a valid amount of words" if text.nil?
  text.to_f / 200
end
def task_tracker(text)
  fail "This is not a valid input type" unless text.is_a?(String)
  text.include?("#TODO")
end
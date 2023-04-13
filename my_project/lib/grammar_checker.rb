def grammar_checker(text)
  fail "This is not a valid input type" unless text.is_a?(String)
  text.start_with?(/[A-Z]/) && text.end_with?(".", "!", "?")
end
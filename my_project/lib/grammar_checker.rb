def grammar_checker(text)
  if text.start_with?(/[A-Z]/)
    true
  else
    false
  end
end
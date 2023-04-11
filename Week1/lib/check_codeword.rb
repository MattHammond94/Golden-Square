def check_codeword(codeword)
  if codeword == "cabbage"
    return "Correct! Come in."
  elsif codeword.chars.first == "c" && codeword.chars.last == "e"
    return "Warmer"
  else
    return "Wrong!"
  end
end

check_codeword("clique")
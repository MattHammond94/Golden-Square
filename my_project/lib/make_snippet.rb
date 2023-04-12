def make_snippet(string)
  arr = string.split(" ")
  arr.size <= 5 ? string : "#{arr[0..4].join(" ")}..."
end
# ---------------------------------
# all 3 below are the same
# example 3 allows further methods to be added

# Example 1:
# class Diary
#   def initialize(contents)
#     @contents = contents
#   end

#   def read
#     @contents
#   end
# end

# Example 2:
Diary = Struct.new(:contents)

# Example 3:
# class Diary < Struct.new(:contents)

# end
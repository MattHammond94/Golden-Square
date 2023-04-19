class DiaryEntry
  def initialize(title, contents)
    if !(title.is_a?(String)) || !(contents.is_a?(String))
      fail "Both inputs must be valid in order to create a new entry"
    elsif title.empty? || contents.empty? 
      fail "One of your inputs is empty - Please try again"
    else
    @title = title
    @contents = contents
    end
  end

  def title
    @title
  end

  def contents
    @contents
  end
end
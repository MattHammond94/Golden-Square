class SecretDiary
  def initialize(diary)
    @diary = diary
    @lock = true
  end

  def read
    if @lock == true 
      "Go away!"
    else
      @diary.contents
    end
  end

  def lock
    @lock = true
  end

  def unlock
    @lock = false
  end
end

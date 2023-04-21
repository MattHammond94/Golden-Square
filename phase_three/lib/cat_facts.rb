require 'json'
# require 'net/http'

class CatFacts
  def initialize(checker)
    @checker = checker
  end

  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @checker.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end

# fact = CatFacts.new
# p fact.provide
# p fact.get_cat_fact

# Net::HTTP
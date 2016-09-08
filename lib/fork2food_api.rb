require 'httparty'

class ForkAPI
  API_URL = 'http://food2fork.com/api/search?key=65560df229f380f479b3cd47b479a631&q=shredded%20chicken'

  def search_on_term
    response = HTTParty.get(API_URL)
    json = JSON.parse(response)
    json["count"]
  end
end

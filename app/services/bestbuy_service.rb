require 'net/http'

class BestbuyService

  def initialize(zip)
    @uri =  URI("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType&pageSize=17&apiKey=#{ENV["api_key"]}")
  end


  def parsed_json
    get_response["stores"]
  end

  def get_response
    resp = Net::HTTP.get(@uri)
    JSON.parse(resp, symbolize_headers: true)
  end

end

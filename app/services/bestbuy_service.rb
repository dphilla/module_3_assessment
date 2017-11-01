require 'net/http'

class BestbuyService

  def initialize(zip)
    @uri =  URI("https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name&pageSize=17&apiKey=#{ENV["api_key"]}")
  end


  def parsed_json

  end

  def get_response
    resp = Net::HTTP.get(@uri)
    stuff = JSON.parse(resp, symbolize_headers: true)
    require 'pry'; binding.pry
  end

end

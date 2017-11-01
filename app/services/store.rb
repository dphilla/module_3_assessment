

class Store

  def initialize(attrs)
    @name
    @city
    @distance
    @phone_number
    @store_type
  end

  def self.filter(zip)
    stores = BestbuyServce.new(zip).parsed_json
    stores.map do |store|
      Store.new(store)
    end
  end



end


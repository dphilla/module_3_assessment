

class Store

  def initialize(attrs)
    @name          = attrs["longName"]
    @city          = attrs["city"]
    @distance      = attrs["distance"]
    @phone_number  = attrs["phone"]
    @store_type    = attrs["storeType"]
  end

  def self.filter(zip)
    stores = BestbuyService.new(zip).parsed_json
    stores.map do |store|
      Store.new(store)
    end
  end

end


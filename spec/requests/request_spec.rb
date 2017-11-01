require 'rails_helper'


describe "Items API " do
  it "finds all items" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")

    get "/api/v1/items"

    items = JSON.parse(response.body)

    expect(response).to be_success
    expect(items.count).to eq(2)
  end
  it "finds all items" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")
    Item.create(name: "Pete Rock", description: "almost the illest", image_url: "dope.com")

    get "/api/v1/items/#{Item.last.id}"

    items = JSON.parse(response.body)

    expect(response).to be_success
    expect(items.count).to eq(1)
  end
  it "deletes an item" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")
    Item.create(name: "Pete Rock", description: "almost the illest", image_url: "dope.com")

    delete "/api/v1/items/#{Item.last.id}"

    items = JSON.parse(response.body)

    expect(items.count).to eq(2)
  end
  it "finds all items" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")
    Item.create(name: "Pete Rock", description: "almost the illest", image_url: "dope.com")

    post "/api/v1/items/#{Item.last.id}/?name=yolo&description=onetimeforyourmind&image_url=dope.com"

    items = JSON.parse(response.body)

    expect(items.count).to eq(4)
  end
end







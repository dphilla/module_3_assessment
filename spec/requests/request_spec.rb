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

    item = JSON.parse(response.body)

    expect(response).to be_success
    expect(item["name"]).to eq("Pete Rock")
  end
  it "deletes an item" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")
    Item.create(name: "Pete Rock", description: "almost the illest", image_url: "dope.com")

    delete "/api/v1/items/#{Item.last.id}"

    expect(Item.all.count).to eq(2)
  end
  it "finds all items" do
    Item.create(name: "J Dilla", description: "the illest", image_url: "dope.com")
    Item.create(name: "Jae dee", description: "the illest", image_url: "dope.com")
    Item.create(name: "Pete Rock", description: "almost the illest", image_url: "dope.com")

    post "/api/v1/items?name=yolo&description=onetimeforyourmind&image_url=dope.com"
    expect(Item.all.count).to eq(4)
  end
end







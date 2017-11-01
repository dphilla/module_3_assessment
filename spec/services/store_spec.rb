require 'rails_helper'

describe 'class methods on Store service' do
  scenario '.filter' do

    @stores = Store.filter('80202')

  expect(@stores.count).to eq(17)
  end
end


require 'acceptance_helper'

describe "basisc5 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics5'
  end

  it "should not be able to order columns with disabled ordering" do

    lambda {click_link 'Description'}.should raise_error(Capybara::ElementNotFound)
    lambda {click_link 'Archived'}.should raise_error(Capybara::ElementNotFound)

  end

end

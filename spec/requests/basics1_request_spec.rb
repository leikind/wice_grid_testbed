require 'acceptance_helper'

describe "basisc1 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics1'
  end

  include_examples "basic task table specs"
  include_examples "show all and back"
end

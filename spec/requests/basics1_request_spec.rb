require 'acceptance_helper'

describe "basisc1 WiceGrid", :type => :request do

  before :each do
    visit '/basics1'
  end

  include_examples "basic task table specs"

end

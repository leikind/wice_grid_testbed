require 'acceptance_helper'

describe "basisc3 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics3'
  end

  # include_examples "basic task table specs"
  # include_examples "show all and back"
  # include_examples "names of columns"
  # include_examples "sorting columns"
  # include_examples "sorting columns in all records mode"

  include_examples 'basic filtering'
end

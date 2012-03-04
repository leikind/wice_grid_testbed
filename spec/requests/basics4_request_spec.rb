require 'acceptance_helper'

describe "basisc4 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics4'
  end

  include_examples "basic task table specs"
  include_examples "show all and back"
  include_examples "names of columns"
  include_examples "sorting columns"
  include_examples "sorting columns in all records mode"

end

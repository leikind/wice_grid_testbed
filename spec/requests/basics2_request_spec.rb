require 'acceptance_helper'

describe "basisc1 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics2'
  end

  if ALL_TESTS
    include_examples "basic task table specs"
    include_examples "show all and back"
  end
  include_examples "names of columns"

end

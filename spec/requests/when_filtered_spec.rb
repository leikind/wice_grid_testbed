require 'acceptance_helper'

describe "disable_all_filters WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/when_filtered'
  end

  if ALL_TESTS
    include_examples "basic task table specs"
    include_examples "show all and back"
    include_examples "names of columns"
    include_examples "sorting columns"
    include_examples "sorting columns in all records mode"
  end


end

require 'acceptance_helper'

describe "blockless_column_definition WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/blockless_column_definition'
  end

  if ALL_TESTS
    include_examples "basic task table specs"
    include_examples "show all and back"
    include_examples "names of columns"
  end
  include_examples "sorting columns"
  include_examples "sorting columns in all records mode"
  include_examples 'basic filtering'
  include_examples 'basic filtering extended'

end

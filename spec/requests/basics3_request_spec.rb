require 'acceptance_helper'

describe "basisc3 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics3'
    # visit '/basics3?grid%5Bf%5D%5Bdue_date%5D%5Bfr%5D=2012-05-09&grid%5Bf%5D%5Bdue_date%5D%5Bto%5D=2012-05-25'
  end


  it "should filter by Due Date" do
    find(:css, '#grid_f_due_date_fr_date_placeholder .ui-datepicker-trigger').click
    # sleep(60 * 10)
    # find(:css, '.ui-datepicker-trigger').click
    # sleep(50)
  end

  # if ALL_TESTS
  #   include_examples "basic task table specs"
  #   include_examples "show all and back"
  #   include_examples "names of columns"
  # end
  # include_examples "sorting columns"
  # include_examples "sorting columns in all records mode"
  # include_examples 'basic filtering'
  # include_examples 'basic filtering extended'

end

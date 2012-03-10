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
  include_examples 'basic filtering'

  it "should not have disabled filters" do
    page.should have_no_selector('#grid_f_id_fr')
    page.should have_no_selector('#grid_f_id_to')
    page.should have_no_selector('#grid_f_description')
    page.should have_no_selector('#grid_f_created_at_fr_year')
    page.should have_no_selector('#grid_f_created_at_fr_month')

    page.should have_no_selector('#grid_f_created_at_to_year')
    page.should have_no_selector('#grid_f_created_at_to_month')

  end

end

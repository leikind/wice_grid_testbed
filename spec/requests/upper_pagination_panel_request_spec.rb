require 'acceptance_helper'

describe "upper pagination panel WiceGrid", :type => :request do

  before :each do
    visit '/upper_pagination_panel'
  end

  include_examples "basic task table specs"
  include_examples "names of columns"

  it "upper pagination panel should be present" do
    page.should have_selector('table.wice_grid thead tr td .pagination em.current')

    within 'table.wice_grid thead tr td .pagination_status' do
      page.should have_content('1-20 / 50')
    end
  end


end

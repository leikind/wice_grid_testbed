require 'acceptance_helper'

describe "upper pagination panel WiceGrid", :type => :request do

  before :each do
    visit '/upper_pagination_panel'
  end

  include_examples "basic task table specs"

  it "should be present" do
    page.should have_selector('table.wice_grid thead tr td .pagination em.current')
  end


end

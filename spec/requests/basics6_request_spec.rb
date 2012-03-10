require 'acceptance_helper'

describe "basisc5 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics6'
  end

  it "should ordered by Title" do
    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Title')
    end


  end

  it "should not have records with Archived==no" do
    click_on 'show all'

    within 'div.wice_grid_container table.wice_grid tbody' do
      page.should_not have_content('Yes')
    end


  end


end

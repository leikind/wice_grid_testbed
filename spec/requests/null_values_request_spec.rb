require 'acceptance_helper'

describe "custom_ordering WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/null_values'
  end


  it "should have all options" do
    within '#grid_f_priority_id' do
      page.should have_content('NOT DEFINED')
      page.should have_content('DEFINED')
      page.should have_content('Anecdotic')
      page.should have_content('High')
      page.should have_content('Low')
      page.should have_content('Normal')
      page.should have_content('Urgent')

    end


  end

  it "should filter by custom fields" do

    select 'NOT DEFINED', :from => 'grid_f_priority_id'

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-17 / 17')
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('')
    end


    select 'DEFINED', :from => 'grid_f_priority_id'

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-20 / 33')
    end


    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('Urgent')
    end

  end


end

require 'acceptance_helper'

describe "with_paginated_resultset WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/resultset_processings'
  end

  it "should return records displayed on the page" do

    page.should have_content('10 records on the current page: 507, 519, 537, 540, 511, 515, 523, 524, 542, and 551')

    fill_in('g_f_title', :with => 'ed')

    page.should have_content('2 records on the current page: 507 and 534')

    find(:css, '#g_reset_grid_icon').click

    select 'Cancelled',  :from => 'g_f_status_id'

    page.should have_content('8 records on the current page: 511, 515, 523, 524, 527, 531, 542, and 551')

    find(:css, '#g_reset_grid_icon').click
    select 'no',  :from => 'g_f_archived'


    page.should have_content('10 records on the current page: 507, 519, 537, 540, 511, 515, 523, 527, 542, and 551')

  end
end

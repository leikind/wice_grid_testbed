require 'acceptance_helper'

describe "custom_ordering WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/negation'
  end


  it "should filter by custom filters" do

    fill_in('grid_f_title_v', :with => 'sed')
    select 'no', :from => 'grid_f_archived'

    find(:css, '#grid_submit_grid_icon').click

    page.should have_content('sed impedit iste')

    find(:css, '#grid_f_title_n').click

    find(:css, '#grid_submit_grid_icon').click



    page.should_not have_content('sed impedit iste')

  end

end

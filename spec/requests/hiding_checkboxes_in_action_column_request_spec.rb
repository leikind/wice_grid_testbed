require 'acceptance_helper'

describe "action_column WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/hiding_checkboxes_in_action_column'
  end

  it "there must be no checkboxes for tasks with the Assigned status" do
    select 'Assigned', :from => 'g_f_status_id'
    find(:css, "#g_submit_grid_icon").click

    find(:css, %`.clickable.select-all`).click

    click_on('Process tasks')

    lambda{
      find(:css, %`.sel input[type=checkbox]`)
    }.should raise_error(Capybara::ElementNotFound)

  end

  it "should select rows" do

    510.upto(520).each do |i|
      find(:css, %`input[type="checkbox"][value="#{i}"]`).click unless i == 519

    end

    click_on('Process tasks')

    page.should have_content('Selected tasks: 510, 511, 512, 513, 514, 515, 516, 517, 518, and 520')
  end

  it "should select rows with the select all button and deselect them woth the deselect button" do

    find(:css, %`.clickable.select-all`).click

    click_on('Process tasks')

    page.should have_content('Selected tasks: 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 520, 521, 522, 523, 524, 525, and 526')

    find(:css, %`.clickable.deselect-all`).click

    click_on('Process tasks')

    page.should_not have_content('Selected tasks: 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 520, 521, 522, 523, 524, 525, and 526')
  end

  it "should keep the state of filter inside a form" do

  end

  it "should filter by ID inside a form, two limits" do
    fill_in('g_f_id_fr', :with => 507)
    fill_in('g_f_id_to', :with => 509)

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('507')
    end

    page.should have_content('508')
    page.should have_content('509')


    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end


    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.sorted.active-filter' do
      page.should have_content('507')
    end

    page.should have_content('508')
    page.should have_content('509')


    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end


    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.sorted' do
      page.should have_content('509')
    end

    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'Title'
    end


    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end

  end

  it "should filter by Archived inside a form" do
    select 'yes', :from => 'g_f_archived'
    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-4 / 4')
    end

    within 'td.active-filter' do
      page.should have_content('Yes')
    end

    select 'no', :from => 'g_f_archived'
    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-20 / 46')
    end

    within 'td.active-filter' do
      page.should have_content('No')
    end


    within '.pagination' do
      click_link '2'
    end

    within '.pagination_status' do
      page.should have_content('21-40 / 46')
    end

    within 'td.active-filter' do
      page.should have_content('No')
    end


  end


  it "should filter by Added inside a form" do

    set_datepicker(self, 'g_f_created_at_fr_date_placeholder', 2011, 5, 1)

    set_datepicker(self, 'g_f_created_at_to_date_placeholder', 2011, 9, 1)

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-20 / 29')
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('2011-09-13 22:11:12')
    end

    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-20 / 29')
    end

    within '.pagination' do
      click_link '2'
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('2011-08-14 22:11:12')
    end


  end



  it "should filter by Due Date" do

    set_datepicker(self, 'g_f_due_date_fr_date_placeholder', 2012, 0, 1)

    set_datepicker(self, 'g_f_due_date_to_date_placeholder', 2013, 0, 1)

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-20 / 35')
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('2012-07-29')
    end

    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-20 / 35')
    end

    within '.pagination' do
      click_link '2'
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('2012-07-15')
    end


    set_datepicker(self, 'g_f_due_date_fr_date_placeholder', 2012, 6, 28)

    set_datepicker(self, 'g_f_due_date_to_date_placeholder', 2012, 6, 31)

    click_on('Process tasks')


    within '.pagination_status' do
      page.should have_content('1-1 / 1')
    end

    find(:css, '#g_f_due_date_fr_date_view').click

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-10 / 10')
    end

    find(:css, '#g_f_due_date_to_date_view').click

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end

  it "should negate the semantics of the text  filter inside a form" do

    fill_in('g_f_title_v', :with => 'sed')
    select 'no', :from => 'g_f_archived'

    click_on('Process tasks')

    page.should have_content('sed impedit iste')

    find(:css, '#g_f_title_n').click

    click_on('Process tasks')

    page.should_not have_content('sed impedit iste')

  end

  it "should reload the title filter" do
    fill_in('g_f_title_v', :with => 'ed')

    click_on('Process tasks')

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end

    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('sed impedit iste')
    end

    page.should have_content('corporis expedita vel')

    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'Title'
    end

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end


    within 'div.wice-grid-container table.wice-grid tbody tr:first-child td.active-filter' do
      page.should have_content('corporis expedita vel')
    end

    page.should have_content('sed impedit iste')

    within 'div.wice-grid-container table.wice-grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end


    page.should have_content('corporis expedita vel')
    page.should have_content('sed impedit iste')

  end

end

shared_examples "basic task table specs" do
  it "is present on the page" do
    page.should have_selector('div.wice_grid_container table.wice_grid')
  end


  it "should have a show all link" do
    within 'div.wice_grid_container table.wice_grid' do
      page.should have_selector('span.show_all_link')
    end
  end

  it "should change pages" do

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end

    within '.pagination_status' do
      page.should have_content('21-40 / 50')
    end

    within '.pagination' do
      click_link '3'
    end

    within '.wice_grid li.active' do
      page.should have_content('3')
    end

    within '.pagination_status' do
      page.should have_content('41-50 / 50')
    end

  end

  it "should have a pagination status with page 1 as the current page" do
    within 'div.wice_grid_container table.wice_grid' do
      page.should have_selector('div.pagination')

      within 'div.pagination' do
        page.should have_selector('li.active')
        within 'li.active' do
          page.should have_content('1')
        end

        page.should have_content('2')
        page.should have_content('3')
        page.should_not have_content('4')
      end
    end
  end
end

shared_examples "show all and back" do

  it "should show all records when asked" do
    click_on 'show all'

    within 'div.wice_grid_container table.wice_grid' do
      page.should have_selector('span.show_all_link')
    end

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    click_on 'back to paginated view'

    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end

end

shared_examples "names of columns" do

  it 'should have names of columns' do
    within 'div.wice_grid_container table.wice_grid thead' do
      page.should have_content('ID')
      page.should have_content('Title')
      page.should have_content('Description')
      page.should have_content('Archived')
      page.should have_content('Added')
    end
  end
end

shared_examples 'sorting columns' do
  it 'should sort column ID' do
    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('ID')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('507')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('ID')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('556')
    end

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('ID')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('536')
    end
  end

  it 'should sort column Title' do
    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Title')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('ab')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Title')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('voluptatum non')
    end

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Title')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('quia dignissimos maiores')
    end
  end

  it 'should sort column Description' do
    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Description')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Accusamus voluptas sunt deleniti iusto dolorem repudiandae.')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Description')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Voluptate occaecati quisquam in et qui nostrum eos minus.')
    end

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Description')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Iure tenetur cum aut optio et quia similique debitis.')
    end
  end


  it 'should sort column Archived' do
    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Archived'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Archived')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('No')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Archived'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Archived')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Yes')
    end

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Archived')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('No')
    end
  end


  it 'should sort column Added' do
    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Added'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Added')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('11 Aug 22:11')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Added'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Added')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('16 Nov 22:11')
    end

    within '.pagination' do
      click_link '2'
    end

    within '.wice_grid li.active' do
      page.should have_content('2')
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Added')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('02 Oct 22:11')
    end
  end


end


shared_examples 'sorting columns in all records mode' do

  it 'should sort column ID' do
    click_on 'show all'

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('ID')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('507')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('ID')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('556')
    end

  end


  it 'should sort column Title' do
    click_on 'show all'

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Title')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('ab')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Title')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('voluptatum non')
    end

  end

  it 'should sort column Description' do
    click_on 'show all'

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Description')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Accusamus voluptas sunt deleniti iusto dolorem repudiandae.')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Description')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Voluptate occaecati quisquam in et qui nostrum eos minus.')
    end

  end



  it 'should sort column Archived' do
    click_on 'show all'

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Archived'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Archived')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('No')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Archived'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Archived')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('Yes')
    end

  end


  it 'should sort column Added' do
    click_on 'show all'

    within '.pagination_status' do
      page.should have_content('1-50 / 50')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Added'
    end

    within 'div.wice_grid_container table.wice_grid thead th.sorted a.asc' do
      page.should have_content('Added')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('11 Aug 22:11')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Added'
    end


    within 'div.wice_grid_container table.wice_grid thead th.sorted a.desc' do
      page.should have_content('Added')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('16 Nov 22:11')
    end

  end

end


shared_examples 'basic filtering extended' do


  it "should filter by Added" do
    select '2011', :from => 'grid_f_created_at_fr_year'
    select 'February', :from => 'grid_f_created_at_fr_month'
    select '8', :from => 'grid_f_created_at_fr_day'
    select '00', :from => 'grid_f_created_at_fr_hour'
    select '00', :from => 'grid_f_created_at_fr_minute'


    select '2011', :from => 'grid_f_created_at_to_year'
    select 'September', :from => 'grid_f_created_at_to_month'
    select '10', :from => 'grid_f_created_at_to_day'
    select '00', :from => 'grid_f_created_at_to_hour'
    select '00', :from => 'grid_f_created_at_to_minute'

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-16 / 16')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('13 Aug 22:11')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-16 / 16')
    end



    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end


  it "should filter by Description" do
    fill_in('grid_f_description', :with => 've')

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-12 / 12')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('Velit atque sapiente aspernatur sint fuga.')
    end

    page.should have_content('Vero sit voluptate sed tempora et provident sequi nihil.')

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end

    within '.pagination_status' do
      page.should have_content('1-12 / 12')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('Ad sunt vel maxime labore temporibus incidunt quidem.')
    end

    page.should have_content('Adipisci voluptate sed esse velit.')

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-12 / 12')
    end


    page.should have_content('Adipisci voluptate sed esse velit.')
    page.should have_content('Ad sunt vel maxime labore temporibus incidunt quidem.')

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end

  it "should filter by ID, one limit" do
    fill_in('grid_f_id_fr', :with => 550)


    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-7 / 7')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('550')
    end

    551.upto(556) do |i|
      page.should have_content(i)
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-7 / 7')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted.active_filter' do
      page.should have_content('550')
    end

    551.upto(556) do |i|
      page.should have_content(i)
    end


    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-7 / 7')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('556')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end


    within '.pagination_status' do
      page.should have_content('1-7 / 7')
    end

    550.upto(556) do |i|
      page.should have_content(i)
    end

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end


  it "should filter by ID, two limits" do
    fill_in('grid_f_id_fr', :with => 507)
    fill_in('grid_f_id_to', :with => 509)

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('507')
    end

    page.should have_content('508')
    page.should have_content('509')


    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted.active_filter' do
      page.should have_content('507')
    end

    page.should have_content('508')
    page.should have_content('509')


    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.sorted' do
      page.should have_content('509')
    end

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end


    within '.pagination_status' do
      page.should have_content('1-3 / 3')
    end

    page.should have_content('507')
    page.should have_content('508')
    page.should have_content('509')

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end
  end


  it "should filter by multiple columns" do
    fill_in('grid_f_description', :with => 'v')
    fill_in('grid_f_title', :with => 's')
    select 'no', :from => 'grid_f_archived'

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-11 / 11')
    end

    page.should have_content('Inventore iure eos labore ipsum.')
    page.should have_content('Velit atque sapiente aspernatur sint fuga.')

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Description'
    end

    within '.pagination_status' do
      page.should have_content('1-11 / 11')
    end

    page.should have_content('Inventore iure eos labore ipsum.')
    page.should have_content('Velit atque sapiente aspernatur sint fuga.')

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end


  end

end

shared_examples 'basic filtering' do



  it "should filter by Archived" do
    select 'yes', :from => 'grid_f_archived'
    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-4 / 4')
    end

    within 'td.active_filter' do
      page.should have_content('Yes')
    end

    select 'no', :from => 'grid_f_archived'
    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-20 / 46')
    end

    within 'td.active_filter' do
      page.should have_content('No')
    end


    within '.pagination' do
      click_link '2'
    end

    within '.pagination_status' do
      page.should have_content('21-40 / 46')
    end

    within 'td.active_filter' do
      page.should have_content('No')
    end

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end



  end


  it "should filter by Ttile" do
    fill_in('grid_f_title', :with => 'ed')

    find(:css, '#grid_submit_grid_icon').click

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end

    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('sed impedit iste')
    end

    page.should have_content('corporis expedita vel')

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'Title'
    end

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end


    within 'div.wice_grid_container table.wice_grid tbody tr:first-child td.active_filter' do
      page.should have_content('corporis expedita vel')
    end

    page.should have_content('sed impedit iste')

    within 'div.wice_grid_container table.wice_grid thead' do
      click_on 'ID'
    end

    within '.pagination_status' do
      page.should have_content('1-2 / 2')
    end


    page.should have_content('corporis expedita vel')
    page.should have_content('sed impedit iste')

    find(:css, '#grid_reset_grid_icon').click
    within '.pagination_status' do
      page.should have_content('1-20 / 50')
    end

  end

end

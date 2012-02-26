shared_examples "basic task table specs" do |collection_class|
  it "is present on the page" do
    page.should have_selector('div.wice_grid_container table.wice_grid')

    # within 'div.wice_grid_container table.wice_grid .pagination_status' do
    #   page.should have_content('1-20 / 50')
    # end
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

    within 'em.current' do
      page.should have_content('2')
    end

    within '.pagination_status' do
      page.should have_content('21-40 / 50')
    end

    within '.pagination' do
      click_link '3'
    end

    within 'em.current' do
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
        page.should have_selector('em.current')
        within 'em.current' do
          page.should have_content('1')
        end

        page.should have_content('2')
        page.should have_content('3')
        page.should_not have_content('4')
      end
    end
  end
end

# encoding: UTF-8
require 'acceptance_helper'

describe "localization WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/localization'
  end


  it "should switch to different languages" do

    click_on('en')
    page.should have_content('show all')


    click_on('nl')
    page.should have_content('Alle rijen tonen')


    click_on('fr')
    page.should have_content('Voir tous')


    click_on('is')
    page.should have_content('Sýna all')
  end
end
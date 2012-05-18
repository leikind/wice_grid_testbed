require 'acceptance_helper'

describe "basisc1 WiceGrid", :type => :request, :js => true do

  before :each do
    visit '/basics2'
  end

  include_examples "names of columns"

end

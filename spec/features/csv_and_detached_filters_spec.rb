# encoding: utf-8
require 'acceptance_helper'

describe 'buttons WiceGrid', type: :request, js: true do
  before :each do
    visit '/csv_and_detached_filters'
  end

  include_examples 'detached_filters'
end

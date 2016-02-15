require 'spec_helper'

describe Company, type: :model do
  it { should have_many(:supplier_projects)}
  it { should have_many(:customer_projects)}
end

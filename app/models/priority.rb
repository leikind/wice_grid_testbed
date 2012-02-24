class Priority < ActiveRecord::Base
  has_many :tasks

  include ToDropdownMixin
end

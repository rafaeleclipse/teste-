class Menu < ActiveRecord::Base
  has_many :children, :class_name => "Menu", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Menu"
end

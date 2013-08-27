class Sim < ActiveRecord::Base
  belongs_to :user
  attr_accessible :reynolds_num, :mach_num, :angle_of_attack, :temp, :name
  
  default_scope order('created_at DESC')

  validates_numericality_of :reynolds_num, :greater_than_or_equal_to => 100000, :less_than_or_equal_to => 10000000000, presence: true
  validates_numericality_of :mach_num, :greater_than => 0, :less_than => 25, presence: true
  validates_numericality_of :angle_of_attack, :greater_than_or_equal_to => -20, :less_than_or_equal_to => 20, presence: true
  validates_numericality_of :temp, :greater_than => 0, presence: true

end

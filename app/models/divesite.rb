class Divesite < ActiveRecord::Base
  belongs_to :area
  has_many :log
  has_many :picture
end

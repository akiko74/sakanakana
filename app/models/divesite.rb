class Divesite < ActiveRecord::Base
  belongs_to :area
  has_many :divelogs
#  has_many :pictures, :through => :divelogs
  has_many :pictures
end

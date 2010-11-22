class Divesite < ActiveRecord::Base
  belongs_to :area
  has_many :logs
  has_many :pictures
end

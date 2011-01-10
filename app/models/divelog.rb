class Divelog < ActiveRecord::Base
  belongs_to :divesite
  has_many :pictures
end

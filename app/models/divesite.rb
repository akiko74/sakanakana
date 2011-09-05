class Divesite < ActiveRecord::Base
  belongs_to :area
  has_many :divelogs
#  has_many :pictures, :through => :divelogs
  has_many :pictures
  has_attached_file :sitemap, :styles => { :medium=> "720x540>", :thumb => "105x80>" }

end

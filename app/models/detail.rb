class Detail < ActiveRecord::Base
  has_and_belongs_to_many :pictures
  belongs_to :genre


end

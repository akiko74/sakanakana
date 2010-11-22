class Genre < ActiveRecord::Base
  has_many :details
end

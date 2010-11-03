class Picture < ActiveRecord::Base
  has_and_belongs_to_many :details
  has_and_belongs_to_many :tags
  belongs_to :divesite
  attr_accessor :originalpict
  after_save :create_originalpict

  def originalpict_exist?
     File.exist?(originalpict_filepath)
  end

  def originalpict_filepath
    "#{Rails.root}/img/picturl/#{self.id}.jpg"
  end

  def create_originalpict
    return if self.originalpict.blank?
    debugger
    FileUtils.mkdir_p(File.dirname(originalpict_filepath))
    FileUtils.cp(originalpict.path, originalpict_filepath)
    true
  end

  def public_originalpict_filepath
    "/pictures/#{self.id}/originalpict?#{updated_at.to_i}"
  end

end

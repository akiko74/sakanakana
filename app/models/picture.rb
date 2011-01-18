require 'exifr'
class Picture < ActiveRecord::Base
  has_and_belongs_to_many :details
  has_and_belongs_to_many :tags
  belongs_to :divelog
#  has_one :divesite, :through => :divelog
  belongs_to :divesite
  has_one :exif

  has_attached_file :image, :styles => { :medium => "500x381>", :thumb => "105x80>" }

  after_save :process_exif

    def process_exif
      file = self.image.path
        exif = EXIFR::JPEG.new file
        pic_exif = self.build_exif
            pic_exif.camera_brand = exif.make
            pic_exif.camera_model = exif.model
            pic_exif.shot_date_time = exif.date_time
        pic_exif.save
      end

#    def create
#      detail = Detail.find(params[:detail_id])
#      self.details << detail
#    end

end

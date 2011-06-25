require 'exifr'
class Picture < ActiveRecord::Base
  has_and_belongs_to_many :details
  has_and_belongs_to_many :tags
  belongs_to :divelog
#  has_one :divesite, :through => :divelog
  belongs_to :divesite
  has_one :exif

  has_attached_file :image, :styles => { :medium => "720x540>", :thumb => "105x80>" }

  after_save :process_exif

    def process_exif
      file = self.image.path
        exif = EXIFR::JPEG.new file
        pic_exif = self.build_exif
            pic_exif.camera_brand = exif.make
            pic_exif.camera_model = exif.model
            pic_exif.shot_date_time = exif.date_time
        pic_exif.save
#      @divelog = Divelog.where('start_date < ? and end_date > ?', pic_exif.shot_date_time, pic_exif.shot_date_time).first
#      @picture.divelog_id = @divelog.id
#      @picture.divesite_id = @divelog.divesite_id
#      @picture.update_attributes(:divesite_id, :divelog_id)
      end


#    def update_log
#      exifdate=self.exif.date_time
#      logdates = Divelog.where('start_date > ?, and end_date < ?', exifdate, exifdate)
#    end
      


#    def create
#      detail = Detail.find(params[:detail_id])
#      self.details << detail
#    end

end

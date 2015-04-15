class Development < ActiveRecord::Base
  belongs_to :development_type

  has_many :galleries, :dependent => :destroy
  accepts_nested_attributes_for :galleries, allow_destroy: true

  has_many :amenities, :dependent => :destroy
  has_many :building_services, :dependent => :destroy
  has_many :residence_features, :dependent => :destroy
  has_many :residence_types, :dependent => :destroy
  accepts_nested_attributes_for :amenities, :building_services, :residence_features, :residence_types, allow_destroy: true

  has_attached_file :featured_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }


  has_attached_file :amenities_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }


  has_attached_file :services_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  has_attached_file :residence_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  has_attached_file :penthouse_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  has_attached_file :area_and_floorplan_image,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :retina   => ['1920>',     :jpg, :quality => 100]
  },

    :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  has_attached_file :floorplan_pdf,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url'

  validates_attachment_content_type :featured_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :amenities_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :services_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :residence_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :penthouse_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :area_and_floorplan_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :floorplan_pdf, :content_type =>['application/pdf']


  def s3_credentials
    {:bucket => ENV['AWS_BUCKET'], :access_key_id => ENV["access_key_id"], :secret_access_key => ENV["secret_access_key"]}
  end


  def next
    Development.where(["id > ?", id]).first
  end

  def previous
    Development.where(["id < ?", id]).last
  end

end

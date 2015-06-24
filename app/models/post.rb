class Post < ActiveRecord::Base

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

  validates_attachment_content_type :featured_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def s3_credentials
    {:bucket => ENV['AWS_BUCKET'], :access_key_id => ENV["access_key_id"], :secret_access_key => ENV["secret_access_key"]}
  end

end

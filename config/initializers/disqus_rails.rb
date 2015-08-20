DisqusRails.setup do |config|
  config::SHORT_NAME = ENV['dis_short_name']
  config::SECRET_KEY = ENV['secret_disqus_key'] #leave blank if not used
  # config::PUBLIC_KEY = ENV['public_disqus_key'] #leave blank if not used
  config::ACCESS_TOKEN = ENV['your_access_token'] #you got it, right? ;-)
end

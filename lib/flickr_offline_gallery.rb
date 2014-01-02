require 'flickraw'

require "flickr_offline_gallery/version"
require "flickr_offline_gallery/photo_size"
require "flickr_offline_gallery/photo_sizes"
require "flickr_offline_gallery/photo"
require "flickr_offline_gallery/photoset"
require "flickr_offline_gallery/photoset_downloader"

FlickRaw.api_key       = "#{ENV["FLICKR_API_KEY"]}"
FlickRaw.shared_secret = "#{ENV["FLICKR_SHARED_SECRET"]}"

module FlickrOfflineGallery
  def self.generate
    photoset = Photoset.new("72157638802576105")
  end

  def self.download
    photoset = PhotosetDownloader.new("72157638802576105").download
  end
end
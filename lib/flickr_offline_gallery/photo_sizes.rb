module FlickrOfflineGallery
  class PhotoSizes < OpenStruct
    # commont attrs: large  large_1600  large_2048  large_square  medium  medium_640  medium_800  original  small  small_320  square  thumbnail
    def initialize(raw_sizes)
      super Hash[raw_sizes.map{|s| [s["label"].downcase.gsub(" ", "_"), PhotoSize.new(s)] }]
    end
  end
end
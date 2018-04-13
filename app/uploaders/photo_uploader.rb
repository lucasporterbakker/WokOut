class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


  process eager: true  # Force version generation at upload time.

  version :card_fit do
    cloudinary_transformation effect: "brightness:30",
    width: 500, height: 500, crop: :fill
  end
end

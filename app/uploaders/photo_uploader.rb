class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process convert: 'jpg'

  version :card do
    cloudinary_transformation width: 300
  end

  version :square do
    resize_to_fit 256, 256
  end

  version :avatar do
    cloudinary_transformation effect: "brightness:30",
      width: 150, height: 150, crop: :square, gravity: :face
  end
end

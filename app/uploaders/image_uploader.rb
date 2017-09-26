class ImageUploader < CarrierWave::Uploader::Base
  include Ckeditor::Backend::CarrierWave

  # Include RMagick or ImageScience support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  # include CarrierWave::ImageScience

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    "#{PATH_FILES}/#{Time.now().strftime('%Y')}/#{Time.now().strftime('%m')}/#{Time.now().strftime('%d')}/#{model.id}"
  end
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # process :extract_dimensions

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fill: [250, 200]
  end


  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [100, 80]
  end

  version :list_thumb do
    process resize_to_limit: [570, 500]
  end

  version :content do
    process resize_to_limit: [1170, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    Ckeditor.image_file_types
  end
end

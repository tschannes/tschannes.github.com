

#variables 
images = "./images/*.jpg"
small_images = "./images/small/"

Dir.glob(images) do |img|
  next if img == '.' or img == '..'
  	name = File.basename(img)
  	image = MiniMagick::Image.open(img)
	image.resize "386x168"
	image.format "jpg"
	image.write (small_images + name)
end
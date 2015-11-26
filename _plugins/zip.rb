
require 'rubygems'
require 'zip'

#variables 
folder = Jekyll.configuration({})['zip_folder']
archive = Jekyll.configuration({})['zip_name']
zip = "#{folder}/#{archive}"

#Clearing out old Zip Files
if File.exist?(zip)
	File.delete(zip)
end

input_filenames = Dir.entries(folder)

zip = "#{folder}/#{archive}"

Zip::File.open(zip, Zip::File::CREATE) do |zipfile|
  input_filenames.each do |filename|
    zipfile.add(filename, folder + '/' + filename)
  end
end

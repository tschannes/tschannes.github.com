=begin
links = Wombat.crawl do
  base_url "http://tschannes.ch"
  path "/"

  link_data css: "a"
end

linkData = Wombat.crawl do
  base_url "http://tschannes.ch"
  path "/"

  title xpath: "//title"
  description xpath: "//meta[@name='description']/@content"
end

binding.pry
=end

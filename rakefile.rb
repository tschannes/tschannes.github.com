# Rakefile from http://ixti.net/software/2013/01/28/using-jekyll-plugins-on-github-pages.html

# Custom URL https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/

# QUIT ALL JEKYLL SERVERS BEFORE RUNNING RAKE!!!!

require "rubygems"
require "tmpdir"
require "bundler/setup"
require "jekyll"
require "jekyll-assets"

ENV["JEKYLL_ENV"] = "production"

# Change your GitHub reponame
GITHUB_REPONAME = "tschannes/tschannes.github.com"

desc "Generate blog files"
task :generate do 
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end

desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r "_site/.", tmp

    pwd = Dir.pwd
    Dir.chdir tmp

    system "git init"
    system "git add ."
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.inspect}"
    system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
    system "git push origin master --force"

    Dir.chdir pwd
  end
end
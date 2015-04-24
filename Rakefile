# http://ixti.net/software/2013/01/28/using-jekyll-plugins-on-github-pages.html
# simply call 'rake publish' to compile and publish your web-site to GitHub Pages.
require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"


# Change your GitHub reponame
GITHUB_REPONAME = "papascott/papascott.github.io"
MASTER = "/Users/shanson/Sites/jekyll/master"


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  #Dir.mktmpdir do |tmp|

    pwd = Dir.pwd
    Dir.chdir MASTER
    system "rm -r *"
 	Dir.chdir pwd
  
    cp_r "_site/.", MASTER

    Dir.chdir MASTER
    system "ls -l"

    #system "git init"
    system "git add ."
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.inspect}"
    #system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
    #system "git push"

    Dir.chdir pwd
  #end
end
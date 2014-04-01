require File.expand_path('../_plugins/bundler', __FILE__)

desc "Generate static files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end

desc "Generate and publish static website to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    system "mv * #{tmp}"
    system "git checkout gh-pages"
    system "rm -rf *"
    system "mv #{tmp}/_site/* ."
    message = "Site updated at #{Time.now.utc}"
    system "git add ."
    system "git commit -am #{message.shellescape}"
    system "git push origin gh-pages --force"
    system "rm -rf *"
    system "git checkout master"
    system "rm -rf *"
    system "mv #{tmp}/* ."
    system "rm -rf _site"
    system "echo '\nGround Control to Major Tom: Website Launched!\n'"
  end
end

task :default => :publish
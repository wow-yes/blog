sudo apt-get install ruby-full build-essential zlib1g-dev
gem sources --remove https://rubygems.org/  # Remove default source
gem sources -a https://mirrors.aliyun.com/rubygems/ # Add Aliyun mirror source
sudo gem install jekyll bundler
bundle install
bundle exec jekyll serve

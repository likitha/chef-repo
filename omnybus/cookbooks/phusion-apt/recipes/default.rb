#
# Cookbook Name:: phusion-apt
# Recipe:: default
#

package "apt-transport-https"

apt_repository "passenger" do
  uri "https://oss-binaries.phusionpassenger.com/apt/passenger"
  distribution node['lsb']['codename']
  components ["main"]
  key "561F9B9CAC40B2F7"
  keyserver "keyserver.ubuntu.com"
end

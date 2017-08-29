%w(
  scala
  scala-*
  java-1.6.0-openjdk
  java-1.6.0-openjdk-*
  java-1.7.0-openjdk
  java-1.7.0-openjdk-*
).each do |pkg|
  package pkg do
    action :remove
  end
end

%w(
  wget
  java-1.8.0-openjdk
).each do |pkg|
  package pkg do
    action :install
  end
end

case node[:platform]
when "redhat", "fedora", "amazon"
  # TODO: add if need
else
  raise "Sorry, unsupported platform."
end

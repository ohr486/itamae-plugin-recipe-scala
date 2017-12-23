# --- SETTINGS ---

scala_version = node[:scala][:version]

directory "/usr/local/scala" do
  mode "0755"
  owner "root"
  group "root"
end

template "/etc/profile.d/scala.sh" do
  action :create
  source "templates/scala.sh.erb"
  owner "root"
  group "root"
  mode "644"
  variables(scala_path: "/usr/local/scala/scala-#{scala_version}")
end

# --- INSTALL ---

execute "# get scala tar" do
  not_if "test -e /usr/local/scala/scala-#{scala_version}.tgz"
  cwd "/usr/local/scala"
  command "wget -q http://downloads.typesafe.com/scala/#{scala_version}/scala-#{scala_version}.tgz"
end

execute "# unzip tar" do
  not_if "test -e /usr/local/scala/scala-#{scala_version}"
  cwd "/usr/local/scala"
  command "tar xzvf scala-#{scala_version}.tgz"
end

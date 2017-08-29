require "spec_helper"

describe file("/etc/profile.d/scala.sh") do
  it { should be_file }
  its(:content) { should match /2\.12\.3/ }
end

describe command("source /etc/profile.d/scala.sh && \
                  scala -version") do
  its(:stderr) { should contain("version 2.12.3") }
end

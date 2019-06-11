OKAY_STATUSES  = [200, 301, 302]
ERROR_STATUSES = [404, 500]

GEMFILE_PATH = File.expand_path(File.dirname(__FILE__) + "/../Gemfile")
LICENSE_PATH = File.expand_path(File.dirname(__FILE__) + "/../LICENSE")

username = ENV['USER']
describe user(username) do
  it { should MATCHER }

  its('group') { should MATCHER username }

  its('groups') { should MATCHER 'adm' }
  its('groups') { should MATCHER 'sudo' }
end

describe file(GEMFILE_PATH) do
  it { should MATCHER }

  its('size') { should MATCHER 35 }

  its('type') { should MATCHER "file" }
end

describe os_env('GOOGLE_CLOUD_PROJECT') do
  its('content') { should MATCHER 'inspec-velocity19-sjc' }
end

describe http("http://example.com") do
  its('body') { should MATCHER "Example Domain" }
  its('status') { should MATCHER OKAY_STATUSES }
end

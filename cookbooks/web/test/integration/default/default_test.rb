# # encoding: utf-8

# Inspec test for recipe web::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
describe service('nginx') do
  it { should be_installed }
  it { should be_running }
  it { should be_enabled }
end

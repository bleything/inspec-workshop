#
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

control 'inspec' do
  impact "critical"
  title "inspec CLI"
  desc "Verifies that `inspec` is installed and configured"

  describe package("inspec") do
    it { should be_installed }
    its('version') { should cmp >= '4.12.0-1' }
    its('version') { should cmp <  '5.0' }
  end

  describe file("/usr/bin/inspec") do
    it { should be_file }
    it { should be_executable }
  end

  describe file("/etc/chef/accepted_licenses/inspec") do
    it { should exist }
  end
end

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

  describe file("/usr/local/bin/inspec") do
    it { should be_symlink }
    its('link_path') { should eq "#{ENV['HOME']}/.gems/bin/inspec" }
  end

  describe command("inspec -v") do
    its("exit_status") { should eq 0 }
    its('stdout') { should cmp > "4.3" }
  end
end

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

control 'ssh keys' do
  impact "critical"
  title "SSH keys"
  desc "verifies that the SSH keys are in place"

  describe file("#{ENV['HOME']}/.ssh/id_rsa.pub") do
    it { should exist }
  end

  describe file("#{ENV['HOME']}/.ssh/gcloud-ssh-pubkey") do
    it { should exist }
    its('content') { should match /^#{ENV['USER']}:ssh-rsa / }
    its('content') { should match(/ #{ENV['USER']}@/) }
  end
end

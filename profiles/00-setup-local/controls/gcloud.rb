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

control 'gcloud' do
  impact "critical"
  title "gcloud CLI"
  desc "Verifies that `gcloud` is installed and configured"

  describe os_env("GOOGLE_CLOUD_PROJECT") do
    its('content') { should match /^inspec-velocity19-sjc-5[12]\d\d$/ }
  end

  describe command("gcloud") do
    it { should exist }
  end

  project_id = ENV['GOOGLE_CLOUD_PROJECT']
  describe command("gcloud projects describe #{project_id}") do
    its('exit_status') { should eq 0 }
    its('stdout') { should include project_id }
  end
end

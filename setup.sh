#!/bin/bash
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

if [[ -z $GOOGLE_CLOUD_PROJECT ]]; then
    gcloud config set project ${USER/devstar/inspec-velocity19-sjc-}
fi

bundle install
sudo ln -sf ~/.gems/bin/inspec /usr/local/bin/inspec

if [[ ! -f ~/.ssh/id_rsa ]]; then
    ssh-keygen -t rsa -b 4096 -a 100 -N "" -f ~/.ssh/id_rsa
fi

formatted_key_path=${HOME}/.ssh/gcloud-ssh-pubkey
echo -n "$USER:" > $formatted_key_path
cat ~/.ssh/id_rsa.pub >> $formatted_key_path
gcloud compute project-info add-metadata --metadata-from-file ssh-keys=$formatted_key_path

inspec exec profiles/00-setup-local

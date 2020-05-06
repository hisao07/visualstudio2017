#
# Cookbook:: visualstudio2017
# Recipe:: default
#
# Copyright:: 2018, 2018 SYF All Rights Reserved
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

conf = node['visualstudio2017']
edition = conf['edition']
includeRecommended = conf['includeRecommended'] ? '--includeRecommended' : ''
includeOptional = conf['includeOptional'] ? '--includeOptional' : ''
workloads = conf['workloads'].map{|workload| "--add #{workload}"}.join(' ')
noweb = conf['noweb'] ? '--noweb' : ''

windows_package 'vs_communitymsires' do
  source conf[edition]['url']
  checksum conf[edition]['checksum']
  installer_type :custom
  options "-q --norestart #{workloads} #{includeRecommended} #{includeOptional} --wait #{noweb}"
  timeout conf['timeout']
  returns [0, 3010]
end

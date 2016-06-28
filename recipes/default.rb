#
# Original Author: Michael Klishin (<michael@defprotocol.org>)
# Author: Denis Karpenko (<denis@karpenko.me>)
# Cookbook Name: gradle
# Recipe: tarball
#
# Copyright 2012, Michael S. Klishin.
# Copyright 2012, Denis Karpenko.
# Copyright 2016, EverTrue, Inc.
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
#

include_recipe 'ark'
include_recipe 'java'

release_url = "#{node['et_gradle']['release_url_prefix']}#{node['et_gradle']['version']}" \
              "#{node['et_gradle']['release_url_suffix']}"

ark node['et_gradle']['name'] do
  url         release_url
  version     node['et_gradle']['version']
  prefix_home node['et_gradle']['home_dir']
  prefix_root node['et_gradle']['home_dir']
  has_binaries %w(bin/gradle)
  action      :install
end

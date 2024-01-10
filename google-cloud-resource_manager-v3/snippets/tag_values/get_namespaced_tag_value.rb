# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START cloudresourcemanager_v3_generated_TagValues_GetNamespacedTagValue_sync]
require "google/cloud/resource_manager/v3"

##
# Snippet for the get_namespaced_tag_value call in the TagValues service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ResourceManager::V3::TagValues::Client#get_namespaced_tag_value.
#
def get_namespaced_tag_value
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ResourceManager::V3::TagValues::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ResourceManager::V3::GetNamespacedTagValueRequest.new

  # Call the get_namespaced_tag_value method.
  result = client.get_namespaced_tag_value request

  # The returned object is of type Google::Cloud::ResourceManager::V3::TagValue.
  p result
end
# [END cloudresourcemanager_v3_generated_TagValues_GetNamespacedTagValue_sync]

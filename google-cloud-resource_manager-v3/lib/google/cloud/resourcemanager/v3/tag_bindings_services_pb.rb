# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/resourcemanager/v3/tag_bindings.proto for package 'Google.Cloud.ResourceManager.V3'
# Original file comments:
# Copyright 2021 Google LLC
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

require 'grpc'
require 'google/cloud/resourcemanager/v3/tag_bindings_pb'

module Google
  module Cloud
    module ResourceManager
      module V3
        module TagBindings
          # Allow users to create and manage TagBindings between TagValues and
          # different Google Cloud resources throughout the GCP resource hierarchy.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.resourcemanager.v3.TagBindings'

            # Lists the TagBindings for the given Google Cloud resource, as specified
            # with `parent`.
            #
            # NOTE: The `parent` field is expected to be a full resource name:
            # https://cloud.google.com/apis/design/resource_names#full_resource_name
            rpc :ListTagBindings, ::Google::Cloud::ResourceManager::V3::ListTagBindingsRequest, ::Google::Cloud::ResourceManager::V3::ListTagBindingsResponse
            # Creates a TagBinding between a TagValue and a Google Cloud resource.
            rpc :CreateTagBinding, ::Google::Cloud::ResourceManager::V3::CreateTagBindingRequest, ::Google::Longrunning::Operation
            # Deletes a TagBinding.
            rpc :DeleteTagBinding, ::Google::Cloud::ResourceManager::V3::DeleteTagBindingRequest, ::Google::Longrunning::Operation
            # Return a list of effective tags for the given Google Cloud resource, as
            # specified in `parent`.
            rpc :ListEffectiveTags, ::Google::Cloud::ResourceManager::V3::ListEffectiveTagsRequest, ::Google::Cloud::ResourceManager::V3::ListEffectiveTagsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end

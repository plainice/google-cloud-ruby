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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/resource_manager/v3/version"

require "google/cloud/resource_manager/v3/tag_holds/credentials"
require "google/cloud/resource_manager/v3/tag_holds/paths"
require "google/cloud/resource_manager/v3/tag_holds/operations"
require "google/cloud/resource_manager/v3/tag_holds/client"
require "google/cloud/resource_manager/v3/tag_holds/rest"

module Google
  module Cloud
    module ResourceManager
      module V3
        ##
        # Allow users to create and manage TagHolds for TagValues. TagHolds represent
        # the use of a Tag Value that is not captured by TagBindings but
        # should still block TagValue deletion (such as a reference in a policy
        # condition). This service provides isolated failure domains by cloud location
        # so that TagHolds can be managed in the same location as their usage.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/resource_manager/v3/tag_holds"
        #     client = ::Google::Cloud::ResourceManager::V3::TagHolds::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/resource_manager/v3/tag_holds/rest"
        #     client = ::Google::Cloud::ResourceManager::V3::TagHolds::Rest::Client.new
        #
        module TagHolds
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "tag_holds", "helpers.rb"
require "google/cloud/resource_manager/v3/tag_holds/helpers" if ::File.file? helper_path

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

require "google/cloud/policy_troubleshooter/iam/v3/version"

require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter/credentials"
require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter/client"
require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter/rest"

module Google
  module Cloud
    module PolicyTroubleshooter
      module Iam
        module V3
          ##
          # IAM Policy Troubleshooter service.
          #
          # This service helps you troubleshoot access issues for Google Cloud resources.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter"
          #     client = ::Google::Cloud::PolicyTroubleshooter::Iam::V3::PolicyTroubleshooter::Client.new
          #
          # @example Load this service and instantiate a REST client
          #
          #     require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter/rest"
          #     client = ::Google::Cloud::PolicyTroubleshooter::Iam::V3::PolicyTroubleshooter::Rest::Client.new
          #
          module PolicyTroubleshooter
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "policy_troubleshooter", "helpers.rb"
require "google/cloud/policy_troubleshooter/iam/v3/policy_troubleshooter/helpers" if ::File.file? helper_path

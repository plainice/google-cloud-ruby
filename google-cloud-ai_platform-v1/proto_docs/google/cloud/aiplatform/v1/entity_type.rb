# frozen_string_literal: true

# Copyright 2022 Google LLC
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


module Google
  module Cloud
    module AIPlatform
      module V1
        # An entity type is a type of object in a system that needs to be modeled and
        # have stored information about. For example, driver is an entity type, and
        # driver0 is an instance of an entity type driver.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Name of the EntityType.
        #     Format:
        #     `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}`
        #
        #     The last part entity_type is assigned by the client. The entity_type can be
        #     up to 64 characters long and can consist only of ASCII Latin letters A-Z
        #     and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The
        #     value will be unique given a featurestore.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the EntityType.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this EntityType was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this EntityType was most recently updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize your EntityTypes.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        #     No more than 64 user labels can be associated with one EntityType (System
        #     labels are excluded)."
        #     System reserved label keys are prefixed with "aiplatform.googleapis.com/"
        #     and are immutable.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Used to perform a consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        class EntityType
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

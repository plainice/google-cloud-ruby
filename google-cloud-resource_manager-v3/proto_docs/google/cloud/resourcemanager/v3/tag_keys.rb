# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module ResourceManager
      module V3
        # A TagKey, used to group a set of TagValues.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The resource name for a TagKey. Must be in the format
        #     `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for
        #     the TagKey.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Immutable. The resource name of the new TagKey's parent.
        #     Must be of the form `organizations/{org_id}`.
        # @!attribute [rw] short_name
        #   @return [::String]
        #     Required. Immutable. The user friendly name for a TagKey. The short name
        #     should be unique for TagKeys within the same tag namespace.
        #
        #     The short name must be 1-63 characters, beginning and ending with
        #     an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_),
        #     dots (.), and alphanumerics between.
        # @!attribute [r] namespaced_name
        #   @return [::String]
        #     Output only. Immutable. Namespaced name of the TagKey.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-assigned description of the TagKey. Must not exceed 256
        #     characters.
        #
        #     Read-write.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Update time.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Entity tag which users can pass to prevent race conditions. This
        #     field is always set in server responses. See UpdateTagKeyRequest for
        #     details.
        # @!attribute [rw] purpose
        #   @return [::Google::Cloud::ResourceManager::V3::Purpose]
        #     Optional. A purpose denotes that this Tag is intended for use in policies
        #     of a specific policy engine, and will involve that policy engine in
        #     management operations involving this Tag. A purpose does not grant a
        #     policy engine exclusive rights to the Tag, and it may be referenced by
        #     other policy engines.
        #
        #     A purpose cannot be changed once set.
        # @!attribute [rw] purpose_data
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Purpose data corresponds to the policy system that the tag is
        #     intended for. See documentation for `Purpose` for formatting of this field.
        #
        #     Purpose data cannot be changed once set.
        class TagKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PurposeDataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request message for listing all TagKeys under a parent resource.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the new TagKey's parent.
        #     Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of TagKeys to return in the response. The
        #     server allows a maximum of 300 TagKeys to return. If unspecified, the
        #     server will use 100 as the default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to `ListTagKey`
        #     that indicates where this listing should continue from.
        class ListTagKeysRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The ListTagKeys response message.
        # @!attribute [rw] tag_keys
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::TagKey>]
        #     List of TagKeys that live under the specified parent in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A pagination token returned from a previous call to `ListTagKeys`
        #     that indicates from where listing should continue.
        class ListTagKeysResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for getting a TagKey.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A resource name in the format `tagKeys/{id}`, such as
        #     `tagKeys/123`.
        class GetTagKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for getting a TagKey by its namespaced name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A namespaced tag key name in the format
        #     `{parentId}/{tagKeyShort}`, such as `42/foo` for a key with short name
        #     "foo" under the organization with ID 42 or `r2-d2/bar` for a key with short
        #     name "bar" under the project `r2-d2`.
        class GetNamespacedTagKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for creating a TagKey.
        # @!attribute [rw] tag_key
        #   @return [::Google::Cloud::ResourceManager::V3::TagKey]
        #     Required. The TagKey to be created. Only fields `short_name`,
        #     `description`, and `parent` are considered during the creation request.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Set to true to perform validations necessary for creating the
        #     resource, but not actually perform the action.
        class CreateTagKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for creating a TagKey.
        class CreateTagKeyMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for updating a TagKey.
        # @!attribute [rw] tag_key
        #   @return [::Google::Cloud::ResourceManager::V3::TagKey]
        #     Required. The new definition of the TagKey. Only the `description` and
        #     `etag` fields can be updated by this request. If the `etag` field is not
        #     empty, it must match the `etag` field of the existing tag key. Otherwise,
        #     `ABORTED` will be returned.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Fields to be updated. The mask may only contain `description` or
        #     `etag`. If omitted entirely, both `description` and `etag` are assumed to
        #     be significant.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Set as true to perform validations necessary for updating the resource, but
        #     not actually perform the action.
        class UpdateTagKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for updating a TagKey.
        class UpdateTagKeyMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for deleting a TagKey.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of a TagKey to be deleted in the format
        #     `tagKeys/123`. The TagKey cannot be a parent of any existing TagValues or
        #     it will not be deleted successfully.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Set as true to perform validations necessary for deletion, but
        #     not actually perform the action.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag known to the client for the expected state of the
        #     TagKey. This is to be used for optimistic concurrency.
        class DeleteTagKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for deleting a TagKey.
        class DeleteTagKeyMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A purpose for each policy engine requiring such an integration. A single
        # policy engine may have multiple purposes defined, however a TagKey may only
        # specify a single purpose.
        module Purpose
          # Unspecified purpose.
          PURPOSE_UNSPECIFIED = 0

          # Purpose for Compute Engine firewalls.
          # A corresponding purpose_data should be set for the network the tag is
          # intended for. The key should be 'network' and the value should be in
          # either of these two formats:
          # -https://www.googleapis.com/compute/\\{compute_version}/projects/\\{project_id}/global/networks/\\{network_id}
          # -\\{project_id}/\\{network_name}
          #
          # Examples:
          # -https://www.googleapis.com/compute/staging_v1/projects/fail-closed-load-testing/global/networks/6992953698831725600
          # -fail-closed-load-testing/load-testing-network
          GCE_FIREWALL = 1
        end
      end
    end
  end
end

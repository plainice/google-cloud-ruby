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
        # A TagBinding represents a connection between a TagValue and a cloud
        # resource Once a TagBinding is created, the TagValue is applied to all the
        # descendants of the Google Cloud resource.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The name of the TagBinding. This is a String of the form:
        #     `tagBindings/{full-resource-name}/{tag-value-name}` (e.g.
        #     `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
        # @!attribute [rw] parent
        #   @return [::String]
        #     The full resource name of the resource the TagValue is bound to.
        #     E.g. `//cloudresourcemanager.googleapis.com/projects/123`
        # @!attribute [rw] tag_value
        #   @return [::String]
        #     The TagValue of the TagBinding.
        #     Must be of the form `tagValues/456`.
        # @!attribute [rw] tag_value_namespaced_name
        #   @return [::String]
        #     The namespaced name for the TagValue of the TagBinding.
        #     Must be in the format
        #     `{parent_id}/{tag_key_short_name}/{short_name}`.
        #
        #     For methods that support TagValue namespaced name, only one of
        #     tag_value_namespaced_name or tag_value may be filled. Requests with both
        #     fields will be rejected.
        class TagBinding
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for creating a TagValue.
        class CreateTagBindingMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message to create a TagBinding.
        # @!attribute [rw] tag_binding
        #   @return [::Google::Cloud::ResourceManager::V3::TagBinding]
        #     Required. The TagBinding to be created.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Set to true to perform the validations necessary for creating the
        #     resource, but not actually perform the action.
        class CreateTagBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for deleting a TagBinding.
        class DeleteTagBindingMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message to delete a TagBinding.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TagBinding. This is a String of the form:
        #     `tagBindings/{id}` (e.g.
        #     `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
        class DeleteTagBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message to list all TagBindings for a parent.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The full resource name of a resource for which you want to list
        #     existing TagBindings. E.g.
        #     "//cloudresourcemanager.googleapis.com/projects/123"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of TagBindings to return in the response. The
        #     server allows a maximum of 300 TagBindings to return. If unspecified, the
        #     server will use 100 as the default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to
        #     `ListTagBindings` that indicates where this listing should continue from.
        class ListTagBindingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The ListTagBindings response.
        # @!attribute [rw] tag_bindings
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::TagBinding>]
        #     A possibly paginated list of TagBindings for the specified resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pagination token.
        #
        #     If the result set is too large to fit in a single response, this token
        #     is returned. It encodes the position of the current result cursor.
        #     Feeding this value into a new list request with the `page_token` parameter
        #     gives the next page of the results.
        #
        #     When `next_page_token` is not filled in, there is no next page and
        #     the list returned is the last page in the result set.
        #
        #     Pagination tokens have a limited lifetime.
        class ListTagBindingsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message to ListEffectiveTags
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The full resource name of a resource for which you want to list
        #     the effective tags. E.g.
        #     "//cloudresourcemanager.googleapis.com/projects/123"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of effective tags to return in the response.
        #     The server allows a maximum of 300 effective tags to return in a single
        #     page. If unspecified, the server will use 100 as the default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to
        #     `ListEffectiveTags` that indicates from where this listing should continue.
        class ListEffectiveTagsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of ListEffectiveTags.
        # @!attribute [rw] effective_tags
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::EffectiveTag>]
        #     A possibly paginated list of effective tags for the specified resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pagination token.
        #
        #     If the result set is too large to fit in a single response, this token
        #     is returned. It encodes the position of the current result cursor.
        #     Feeding this value into a new list request with the `page_token` parameter
        #     gives the next page of the results.
        #
        #     When `next_page_token` is not filled in, there is no next page and
        #     the list returned is the last page in the result set.
        #
        #     Pagination tokens have a limited lifetime.
        class ListEffectiveTagsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An EffectiveTag represents a tag that applies to a resource during policy
        # evaluation. Tags can be either directly bound to a resource or inherited from
        # its ancestor. EffectiveTag contains the name and
        # namespaced_name of the tag value and tag key, with additional fields of
        # `inherited` to indicate the inheritance status of the effective tag.
        # @!attribute [rw] tag_value
        #   @return [::String]
        #     Resource name for TagValue in the format `tagValues/456`.
        # @!attribute [rw] namespaced_tag_value
        #   @return [::String]
        #     Namespaced name of the TagValue. Now only supported in the format
        #     `{organization_id}/{tag_key_short_name}/{tag_value_short_name}`.
        #     Other formats will be supported when we add non-org parented tags.
        # @!attribute [rw] tag_key
        #   @return [::String]
        #     The name of the TagKey, in the format `tagKeys/{id}`, such as
        #     `tagKeys/123`.
        # @!attribute [rw] namespaced_tag_key
        #   @return [::String]
        #     The namespaced_name of the TagKey. Now only supported in the format of
        #     `{organization_id}/{tag_key_short_name}`. Other formats will be
        #     supported when we add non-org parented tags.
        # @!attribute [rw] tag_key_parent_name
        #   @return [::String]
        #     The parent name of the tag key.
        #     Must be in the format `organizations/{organization_id}`.
        # @!attribute [rw] inherited
        #   @return [::Boolean]
        #     Indicates the inheritance status of a tag value
        #     attached to the given resource. If the tag value is inherited from one of
        #     the resource's ancestors, inherited will be true. If false, then the tag
        #     value is directly attached to the resource, inherited will be false.
        class EffectiveTag
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

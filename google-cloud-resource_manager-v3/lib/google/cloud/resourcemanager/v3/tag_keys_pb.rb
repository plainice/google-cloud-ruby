# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/tag_keys.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/resourcemanager/v3/tag_keys.proto", :syntax => :proto3) do
    add_message "google.cloud.resourcemanager.v3.TagKey" do
      optional :name, :string, 1
      optional :parent, :string, 2
      optional :short_name, :string, 3
      optional :namespaced_name, :string, 4
      optional :description, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :etag, :string, 8
      optional :purpose, :enum, 11, "google.cloud.resourcemanager.v3.Purpose"
      map :purpose_data, :string, :string, 12
    end
    add_message "google.cloud.resourcemanager.v3.ListTagKeysRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.resourcemanager.v3.ListTagKeysResponse" do
      repeated :tag_keys, :message, 1, "google.cloud.resourcemanager.v3.TagKey"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.resourcemanager.v3.GetTagKeyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.resourcemanager.v3.GetNamespacedTagKeyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.resourcemanager.v3.CreateTagKeyRequest" do
      optional :tag_key, :message, 1, "google.cloud.resourcemanager.v3.TagKey"
      optional :validate_only, :bool, 2
    end
    add_message "google.cloud.resourcemanager.v3.CreateTagKeyMetadata" do
    end
    add_message "google.cloud.resourcemanager.v3.UpdateTagKeyRequest" do
      optional :tag_key, :message, 1, "google.cloud.resourcemanager.v3.TagKey"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.resourcemanager.v3.UpdateTagKeyMetadata" do
    end
    add_message "google.cloud.resourcemanager.v3.DeleteTagKeyRequest" do
      optional :name, :string, 1
      optional :validate_only, :bool, 2
      optional :etag, :string, 3
    end
    add_message "google.cloud.resourcemanager.v3.DeleteTagKeyMetadata" do
    end
    add_enum "google.cloud.resourcemanager.v3.Purpose" do
      value :PURPOSE_UNSPECIFIED, 0
      value :GCE_FIREWALL, 1
    end
  end
end

module Google
  module Cloud
    module ResourceManager
      module V3
        TagKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.TagKey").msgclass
        ListTagKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagKeysRequest").msgclass
        ListTagKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagKeysResponse").msgclass
        GetTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetTagKeyRequest").msgclass
        GetNamespacedTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetNamespacedTagKeyRequest").msgclass
        CreateTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagKeyRequest").msgclass
        CreateTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagKeyMetadata").msgclass
        UpdateTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagKeyRequest").msgclass
        UpdateTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagKeyMetadata").msgclass
        DeleteTagKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagKeyRequest").msgclass
        DeleteTagKeyMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagKeyMetadata").msgclass
        Purpose = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Purpose").enummodule
      end
    end
  end
end

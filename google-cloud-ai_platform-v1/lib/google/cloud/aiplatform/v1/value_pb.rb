# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/value.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/value.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Value" do
      oneof :value do
        optional :int_value, :int64, 1
        optional :double_value, :double, 2
        optional :string_value, :string, 3
      end
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Value = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Value").msgclass
      end
    end
  end
end

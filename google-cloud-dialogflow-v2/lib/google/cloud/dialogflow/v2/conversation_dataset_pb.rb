# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation_dataset.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/gcs_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n5google/cloud/dialogflow/v2/conversation_dataset.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a$google/cloud/dialogflow/v2/gcs.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\".\n\x10\x43onversationInfo\x12\x1a\n\rlanguage_code\x18\x01 \x01(\tB\x03\xe0\x41\x01\"U\n\x0bInputConfig\x12<\n\ngcs_source\x18\x01 \x01(\x0b\x32&.google.cloud.dialogflow.v2.GcsSourcesH\x00\x42\x08\n\x06source\"\xd1\x03\n\x13\x43onversationDataset\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x0cinput_config\x18\x05 \x01(\x0b\x32\'.google.cloud.dialogflow.v2.InputConfigB\x03\xe0\x41\x03\x12L\n\x11\x63onversation_info\x18\x06 \x01(\x0b\x32,.google.cloud.dialogflow.v2.ConversationInfoB\x03\xe0\x41\x03\x12\x1f\n\x12\x63onversation_count\x18\x07 \x01(\x03\x42\x03\xe0\x41\x03:\x88\x01\xea\x41\x84\x01\n-dialogflow.googleapis.com/ConversationDataset\x12Sprojects/{project}/locations/{location}/conversationDatasets/{conversation_dataset}\"\x8b\x01\n CreateConversationDatasetRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12R\n\x14\x63onversation_dataset\x18\x02 \x01(\x0b\x32/.google.cloud.dialogflow.v2.ConversationDatasetB\x03\xe0\x41\x02\"d\n\x1dGetConversationDatasetRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\"\x99\x01\n\x1fListConversationDatasetsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-dialogflow.googleapis.com/ConversationDataset\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x8b\x01\n ListConversationDatasetsResponse\x12N\n\x15\x63onversation_datasets\x18\x01 \x03(\x0b\x32/.google.cloud.dialogflow.v2.ConversationDataset\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"g\n DeleteConversationDatasetRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\"\xa8\x01\n\x1dImportConversationDataRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\x12\x42\n\x0cinput_config\x18\x02 \x01(\x0b\x32\'.google.cloud.dialogflow.v2.InputConfigB\x03\xe0\x41\x02\"\xda\x01\n\'ImportConversationDataOperationMetadata\x12P\n\x14\x63onversation_dataset\x18\x01 \x01(\tB2\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\x12,\n\x10partial_failures\x18\x02 \x03(\x0b\x32\x12.google.rpc.Status\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x91\x01\n\'ImportConversationDataOperationResponse\x12P\n\x14\x63onversation_dataset\x18\x01 \x01(\tB2\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\x12\x14\n\x0cimport_count\x18\x03 \x01(\x05\"~\n*CreateConversationDatasetOperationMetadata\x12P\n\x14\x63onversation_dataset\x18\x01 \x01(\tB2\xfa\x41/\n-dialogflow.googleapis.com/ConversationDataset\",\n*DeleteConversationDatasetOperationMetadata2\xd6\x0c\n\x14\x43onversationDatasets\x12\xb3\x02\n\x19\x43reateConversationDataset\x12<.google.cloud.dialogflow.v2.CreateConversationDatasetRequest\x1a\x1d.google.longrunning.Operation\"\xb8\x01\x82\xd3\xe4\x93\x02P\"8/v2/{parent=projects/*/locations/*}/conversationDatasets:\x14\x63onversation_dataset\xda\x41\x1bparent,conversation_dataset\xca\x41\x41\n\x13\x43onversationDataset\x12*CreateConversationDatasetOperationMetadata\x12\xfd\x01\n\x16GetConversationDataset\x12\x39.google.cloud.dialogflow.v2.GetConversationDatasetRequest\x1a/.google.cloud.dialogflow.v2.ConversationDataset\"w\x82\xd3\xe4\x93\x02j\x12,/v2/{name=projects/*/conversationDatasets/*}Z:\x12\x38/v2/{name=projects/*/locations/*/conversationDatasets/*}\xda\x41\x04name\x12\x90\x02\n\x18ListConversationDatasets\x12;.google.cloud.dialogflow.v2.ListConversationDatasetsRequest\x1a<.google.cloud.dialogflow.v2.ListConversationDatasetsResponse\"y\x82\xd3\xe4\x93\x02j\x12,/v2/{parent=projects/*}/conversationDatasetsZ:\x12\x38/v2/{parent=projects/*/locations/*}/conversationDatasets\xda\x41\x06parent\x12\x88\x02\n\x19\x44\x65leteConversationDataset\x12<.google.cloud.dialogflow.v2.DeleteConversationDatasetRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\x82\xd3\xe4\x93\x02:*8/v2/{name=projects/*/locations/*/conversationDatasets/*}\xda\x41\x04name\xca\x41\x43\n\x15google.protobuf.Empty\x12*DeleteConversationDatasetOperationMetadata\x12\xef\x02\n\x16ImportConversationData\x12\x39.google.cloud.dialogflow.v2.ImportConversationDataRequest\x1a\x1d.google.longrunning.Operation\"\xfa\x01\x82\xd3\xe4\x93\x02\x9e\x01\"C/v2/{name=projects/*/conversationDatasets/*}:importConversationData:\x01*ZT\"O/v2/{name=projects/*/locations/*/conversationDatasets/*}:importConversationData:\x01*\xca\x41R\n\'ImportConversationDataOperationResponse\x12\'ImportConversationDataOperationMetadata\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xa1\x01\n\x1e\x63om.google.cloud.dialogflow.v2B\x18\x43onversationDatasetProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.dialogflow.v2.GcsSources", "google/cloud/dialogflow/v2/gcs.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module V2
        ConversationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationInfo").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.InputConfig").msgclass
        ConversationDataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationDataset").msgclass
        CreateConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationDatasetRequest").msgclass
        GetConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetConversationDatasetRequest").msgclass
        ListConversationDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationDatasetsRequest").msgclass
        ListConversationDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationDatasetsResponse").msgclass
        DeleteConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationDatasetRequest").msgclass
        ImportConversationDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataRequest").msgclass
        ImportConversationDataOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataOperationMetadata").msgclass
        ImportConversationDataOperationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataOperationResponse").msgclass
        CreateConversationDatasetOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationDatasetOperationMetadata").msgclass
        DeleteConversationDatasetOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationDatasetOperationMetadata").msgclass
      end
    end
  end
end

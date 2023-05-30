# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/lineage/v1/lineage.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n1google/cloud/datacatalog/lineage/v1/lineage.proto\x12#google.cloud.datacatalog.lineage.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x81\x03\n\x07Process\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12U\n\nattributes\x18\x03 \x03(\x0b\x32<.google.cloud.datacatalog.lineage.v1.Process.AttributesEntryB\x03\xe0\x41\x01\x12@\n\x06origin\x18\x04 \x01(\x0b\x32+.google.cloud.datacatalog.lineage.v1.OriginB\x03\xe0\x41\x01\x1aI\n\x0f\x41ttributesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01:d\xea\x41\x61\n\"datalineage.googleapis.com/Process\x12;projects/{project}/locations/{location}/processes/{process}\"\xb5\x04\n\x03Run\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12Q\n\nattributes\x18\x03 \x03(\x0b\x32\x38.google.cloud.datacatalog.lineage.v1.Run.AttributesEntryB\x03\xe0\x41\x01\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\x12\x42\n\x05state\x18\x06 \x01(\x0e\x32..google.cloud.datacatalog.lineage.v1.Run.StateB\x03\xe0\x41\x02\x1aI\n\x0f\x41ttributesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\"I\n\x05State\x12\x0b\n\x07UNKNOWN\x10\x00\x12\x0b\n\x07STARTED\x10\x01\x12\r\n\tCOMPLETED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0b\n\x07\x41\x42ORTED\x10\x04:k\xea\x41h\n\x1e\x64\x61talineage.googleapis.com/Run\x12\x46projects/{project}/locations/{location}/processes/{process}/runs/{run}\"\xe3\x02\n\x0cLineageEvent\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x42\n\x05links\x18\x08 \x03(\x0b\x32..google.cloud.datacatalog.lineage.v1.EventLinkB\x03\xe0\x41\x01\x12\x33\n\nstart_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\x12\x31\n\x08\x65nd_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01:\x93\x01\xea\x41\x8f\x01\n\'datalineage.googleapis.com/LineageEvent\x12\x64projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}\"\xa1\x01\n\tEventLink\x12I\n\x06source\x18\x01 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReferenceB\x03\xe0\x41\x02\x12I\n\x06target\x18\x02 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReferenceB\x03\xe0\x41\x02\"4\n\x0f\x45ntityReference\x12!\n\x14\x66ully_qualified_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\xda\x03\n\x11OperationMetadata\x12P\n\x05state\x18\x01 \x01(\x0e\x32<.google.cloud.datacatalog.lineage.v1.OperationMetadata.StateB\x03\xe0\x41\x03\x12X\n\x0eoperation_type\x18\x02 \x01(\x0e\x32;.google.cloud.datacatalog.lineage.v1.OperationMetadata.TypeB\x03\xe0\x41\x03\x12\x15\n\x08resource\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rresource_uuid\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"S\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\"(\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x44\x45LETE\x10\x01\"\xaa\x01\n\x14\x43reateProcessRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"datalineage.googleapis.com/Process\x12\x42\n\x07process\x18\x02 \x01(\x0b\x32,.google.cloud.datacatalog.lineage.v1.ProcessB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"\xa2\x01\n\x14UpdateProcessRequest\x12\x42\n\x07process\x18\x01 \x01(\x0b\x32,.google.cloud.datacatalog.lineage.v1.ProcessB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\"M\n\x11GetProcessRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"datalineage.googleapis.com/Process\"y\n\x14ListProcessesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"datalineage.googleapis.com/Process\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"q\n\x15ListProcessesResponse\x12?\n\tprocesses\x18\x01 \x03(\x0b\x32,.google.cloud.datacatalog.lineage.v1.Process\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"g\n\x14\x44\x65leteProcessRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"datalineage.googleapis.com/Process\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\"\x9a\x01\n\x10\x43reateRunRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x64\x61talineage.googleapis.com/Run\x12:\n\x03run\x18\x02 \x01(\x0b\x32(.google.cloud.datacatalog.lineage.v1.RunB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"\x7f\n\x10UpdateRunRequest\x12:\n\x03run\x18\x01 \x01(\x0b\x32(.google.cloud.datacatalog.lineage.v1.RunB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"E\n\rGetRunRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x64\x61talineage.googleapis.com/Run\"p\n\x0fListRunsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x64\x61talineage.googleapis.com/Run\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"c\n\x10ListRunsResponse\x12\x36\n\x04runs\x18\x01 \x03(\x0b\x32(.google.cloud.datacatalog.lineage.v1.Run\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"_\n\x10\x44\x65leteRunRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x64\x61talineage.googleapis.com/Run\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\"\xbf\x01\n\x19\x43reateLineageEventRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'datalineage.googleapis.com/LineageEvent\x12M\n\rlineage_event\x18\x02 \x01(\x0b\x32\x31.google.cloud.datacatalog.lineage.v1.LineageEventB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"W\n\x16GetLineageEventRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'datalineage.googleapis.com/LineageEvent\"\x82\x01\n\x18ListLineageEventsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'datalineage.googleapis.com/LineageEvent\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x7f\n\x19ListLineageEventsResponse\x12I\n\x0elineage_events\x18\x01 \x03(\x0b\x32\x31.google.cloud.datacatalog.lineage.v1.LineageEvent\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"q\n\x19\x44\x65leteLineageEventRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'datalineage.googleapis.com/LineageEvent\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\"\xa7\x02\n\x12SearchLinksRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"datalineage.googleapis.com/Process\x12K\n\x06source\x18\x04 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReferenceB\x03\xe0\x41\x01H\x00\x12K\n\x06target\x18\x05 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReferenceB\x03\xe0\x41\x01H\x00\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x42\n\n\x08\x63riteria\"h\n\x13SearchLinksResponse\x12\x38\n\x05links\x18\x01 \x03(\x0b\x32).google.cloud.datacatalog.lineage.v1.Link\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x86\x02\n\x04Link\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x05\x12\x44\n\x06source\x18\x02 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReference\x12\x44\n\x06target\x18\x03 \x01(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.EntityReference\x12.\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x98\x01\n\x1f\x42\x61tchSearchLinkProcessesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"datalineage.googleapis.com/Process\x12\x12\n\x05links\x18\x02 \x03(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"\x85\x01\n BatchSearchLinkProcessesResponse\x12H\n\rprocess_links\x18\x01 \x03(\x0b\x32\x31.google.cloud.datacatalog.lineage.v1.ProcessLinks\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x8d\x01\n\x0cProcessLinks\x12\x38\n\x07process\x18\x01 \x01(\tB\'\xfa\x41$\n\"datalineage.googleapis.com/Process\x12\x43\n\x05links\x18\x02 \x03(\x0b\x32\x34.google.cloud.datacatalog.lineage.v1.ProcessLinkInfo\"}\n\x0fProcessLinkInfo\x12\x0c\n\x04link\x18\x01 \x01(\t\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xda\x01\n\x06Origin\x12K\n\x0bsource_type\x18\x01 \x01(\x0e\x32\x36.google.cloud.datacatalog.lineage.v1.Origin.SourceType\x12\x0c\n\x04name\x18\x02 \x01(\t\"u\n\nSourceType\x12\x1b\n\x17SOURCE_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x43USTOM\x10\x01\x12\x0c\n\x08\x42IGQUERY\x10\x02\x12\x0f\n\x0b\x44\x41TA_FUSION\x10\x03\x12\x0c\n\x08\x43OMPOSER\x10\x04\x12\x11\n\rLOOKER_STUDIO\x10\x05\x32\xa0\x1b\n\x07Lineage\x12\xc9\x01\n\rCreateProcess\x12\x39.google.cloud.datacatalog.lineage.v1.CreateProcessRequest\x1a,.google.cloud.datacatalog.lineage.v1.Process\"O\x82\xd3\xe4\x93\x02\x38\"-/v1/{parent=projects/*/locations/*}/processes:\x07process\xda\x41\x0eparent,process\x12\xd6\x01\n\rUpdateProcess\x12\x39.google.cloud.datacatalog.lineage.v1.UpdateProcessRequest\x1a,.google.cloud.datacatalog.lineage.v1.Process\"\\\x82\xd3\xe4\x93\x02@25/v1/{process.name=projects/*/locations/*/processes/*}:\x07process\xda\x41\x13process,update_mask\x12\xb0\x01\n\nGetProcess\x12\x36.google.cloud.datacatalog.lineage.v1.GetProcessRequest\x1a,.google.cloud.datacatalog.lineage.v1.Process\"<\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/processes/*}\xda\x41\x04name\x12\xc6\x01\n\rListProcesses\x12\x39.google.cloud.datacatalog.lineage.v1.ListProcessesRequest\x1a:.google.cloud.datacatalog.lineage.v1.ListProcessesResponse\">\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/processes\xda\x41\x06parent\x12\xf9\x01\n\rDeleteProcess\x12\x39.google.cloud.datacatalog.lineage.v1.DeleteProcessRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/processes/*}\xda\x41\x04name\xca\x41N\n\x15google.protobuf.Empty\x12\x35google.cloud.datacatalog.lineage.v1.OperationMetadata\x12\xbc\x01\n\tCreateRun\x12\x35.google.cloud.datacatalog.lineage.v1.CreateRunRequest\x1a(.google.cloud.datacatalog.lineage.v1.Run\"N\x82\xd3\xe4\x93\x02;\"4/v1/{parent=projects/*/locations/*/processes/*}/runs:\x03run\xda\x41\nparent,run\x12\xc5\x01\n\tUpdateRun\x12\x35.google.cloud.datacatalog.lineage.v1.UpdateRunRequest\x1a(.google.cloud.datacatalog.lineage.v1.Run\"W\x82\xd3\xe4\x93\x02?28/v1/{run.name=projects/*/locations/*/processes/*/runs/*}:\x03run\xda\x41\x0frun,update_mask\x12\xab\x01\n\x06GetRun\x12\x32.google.cloud.datacatalog.lineage.v1.GetRunRequest\x1a(.google.cloud.datacatalog.lineage.v1.Run\"C\x82\xd3\xe4\x93\x02\x36\x12\x34/v1/{name=projects/*/locations/*/processes/*/runs/*}\xda\x41\x04name\x12\xbe\x01\n\x08ListRuns\x12\x34.google.cloud.datacatalog.lineage.v1.ListRunsRequest\x1a\x35.google.cloud.datacatalog.lineage.v1.ListRunsResponse\"E\x82\xd3\xe4\x93\x02\x36\x12\x34/v1/{parent=projects/*/locations/*/processes/*}/runs\xda\x41\x06parent\x12\xf8\x01\n\tDeleteRun\x12\x35.google.cloud.datacatalog.lineage.v1.DeleteRunRequest\x1a\x1d.google.longrunning.Operation\"\x94\x01\x82\xd3\xe4\x93\x02\x36*4/v1/{name=projects/*/locations/*/processes/*/runs/*}\xda\x41\x04name\xca\x41N\n\x15google.protobuf.Empty\x12\x35google.cloud.datacatalog.lineage.v1.OperationMetadata\x12\xfb\x01\n\x12\x43reateLineageEvent\x12>.google.cloud.datacatalog.lineage.v1.CreateLineageEventRequest\x1a\x31.google.cloud.datacatalog.lineage.v1.LineageEvent\"r\x82\xd3\xe4\x93\x02U\"D/v1/{parent=projects/*/locations/*/processes/*/runs/*}/lineageEvents:\rlineage_event\xda\x41\x14parent,lineage_event\x12\xd6\x01\n\x0fGetLineageEvent\x12;.google.cloud.datacatalog.lineage.v1.GetLineageEventRequest\x1a\x31.google.cloud.datacatalog.lineage.v1.LineageEvent\"S\x82\xd3\xe4\x93\x02\x46\x12\x44/v1/{name=projects/*/locations/*/processes/*/runs/*/lineageEvents/*}\xda\x41\x04name\x12\xe9\x01\n\x11ListLineageEvents\x12=.google.cloud.datacatalog.lineage.v1.ListLineageEventsRequest\x1a>.google.cloud.datacatalog.lineage.v1.ListLineageEventsResponse\"U\x82\xd3\xe4\x93\x02\x46\x12\x44/v1/{parent=projects/*/locations/*/processes/*/runs/*}/lineageEvents\xda\x41\x06parent\x12\xc1\x01\n\x12\x44\x65leteLineageEvent\x12>.google.cloud.datacatalog.lineage.v1.DeleteLineageEventRequest\x1a\x16.google.protobuf.Empty\"S\x82\xd3\xe4\x93\x02\x46*D/v1/{name=projects/*/locations/*/processes/*/runs/*/lineageEvents/*}\xda\x41\x04name\x12\xbc\x01\n\x0bSearchLinks\x12\x37.google.cloud.datacatalog.lineage.v1.SearchLinksRequest\x1a\x38.google.cloud.datacatalog.lineage.v1.SearchLinksResponse\":\x82\xd3\xe4\x93\x02\x34\"//v1/{parent=projects/*/locations/*}:searchLinks:\x01*\x12\xf0\x01\n\x18\x42\x61tchSearchLinkProcesses\x12\x44.google.cloud.datacatalog.lineage.v1.BatchSearchLinkProcessesRequest\x1a\x45.google.cloud.datacatalog.lineage.v1.BatchSearchLinkProcessesResponse\"G\x82\xd3\xe4\x93\x02\x41\"</v1/{parent=projects/*/locations/*}:batchSearchLinkProcesses:\x01*\x1aN\xca\x41\x1a\x64\x61talineage.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xf2\x01\n\'com.google.cloud.datacatalog.lineage.v1B\x0cLineageProtoP\x01ZAcloud.google.com/go/datacatalog/lineage/apiv1/lineagepb;lineagepb\xaa\x02#Google.Cloud.DataCatalog.Lineage.V1\xca\x02#Google\\Cloud\\DataCatalog\\Lineage\\V1\xea\x02\'Google::Cloud::DataCatalog::Lineage::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module DataCatalog
      module Lineage
        module V1
          Process = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Process").msgclass
          Run = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Run").msgclass
          Run::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Run.State").enummodule
          LineageEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.LineageEvent").msgclass
          EventLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.EventLink").msgclass
          EntityReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.EntityReference").msgclass
          OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.OperationMetadata").msgclass
          OperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.OperationMetadata.State").enummodule
          OperationMetadata::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.OperationMetadata.Type").enummodule
          CreateProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.CreateProcessRequest").msgclass
          UpdateProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.UpdateProcessRequest").msgclass
          GetProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.GetProcessRequest").msgclass
          ListProcessesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListProcessesRequest").msgclass
          ListProcessesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListProcessesResponse").msgclass
          DeleteProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.DeleteProcessRequest").msgclass
          CreateRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.CreateRunRequest").msgclass
          UpdateRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.UpdateRunRequest").msgclass
          GetRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.GetRunRequest").msgclass
          ListRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListRunsRequest").msgclass
          ListRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListRunsResponse").msgclass
          DeleteRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.DeleteRunRequest").msgclass
          CreateLineageEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.CreateLineageEventRequest").msgclass
          GetLineageEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.GetLineageEventRequest").msgclass
          ListLineageEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListLineageEventsRequest").msgclass
          ListLineageEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ListLineageEventsResponse").msgclass
          DeleteLineageEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.DeleteLineageEventRequest").msgclass
          SearchLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.SearchLinksRequest").msgclass
          SearchLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.SearchLinksResponse").msgclass
          Link = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Link").msgclass
          BatchSearchLinkProcessesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.BatchSearchLinkProcessesRequest").msgclass
          BatchSearchLinkProcessesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.BatchSearchLinkProcessesResponse").msgclass
          ProcessLinks = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ProcessLinks").msgclass
          ProcessLinkInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.ProcessLinkInfo").msgclass
          Origin = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Origin").msgclass
          Origin::SourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.lineage.v1.Origin.SourceType").enummodule
        end
      end
    end
  end
end

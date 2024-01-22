# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/logs.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/cloud/dataplex/v1/logs.proto\x12\x18google.cloud.dataplex.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa0\t\n\x0e\x44iscoveryEvent\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x0f\n\x07lake_id\x18\x02 \x01(\t\x12\x0f\n\x07zone_id\x18\x03 \x01(\t\x12\x10\n\x08\x61sset_id\x18\x04 \x01(\t\x12\x15\n\rdata_location\x18\x05 \x01(\t\x12@\n\x04type\x18\n \x01(\x0e\x32\x32.google.cloud.dataplex.v1.DiscoveryEvent.EventType\x12H\n\x06\x63onfig\x18\x14 \x01(\x0b\x32\x36.google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetailsH\x00\x12H\n\x06\x65ntity\x18\x15 \x01(\x0b\x32\x36.google.cloud.dataplex.v1.DiscoveryEvent.EntityDetailsH\x00\x12N\n\tpartition\x18\x16 \x01(\x0b\x32\x39.google.cloud.dataplex.v1.DiscoveryEvent.PartitionDetailsH\x00\x12H\n\x06\x61\x63tion\x18\x17 \x01(\x0b\x32\x36.google.cloud.dataplex.v1.DiscoveryEvent.ActionDetailsH\x00\x1a\x9e\x01\n\rConfigDetails\x12Z\n\nparameters\x18\x01 \x03(\x0b\x32\x46.google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetails.ParametersEntry\x1a\x31\n\x0fParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x62\n\rEntityDetails\x12\x0e\n\x06\x65ntity\x18\x01 \x01(\t\x12\x41\n\x04type\x18\x02 \x01(\x0e\x32\x33.google.cloud.dataplex.v1.DiscoveryEvent.EntityType\x1a\x98\x01\n\x10PartitionDetails\x12\x11\n\tpartition\x18\x01 \x01(\t\x12\x0e\n\x06\x65ntity\x18\x02 \x01(\t\x12\x41\n\x04type\x18\x03 \x01(\x0e\x32\x33.google.cloud.dataplex.v1.DiscoveryEvent.EntityType\x12\x1e\n\x16sampled_data_locations\x18\x04 \x03(\t\x1a\x1d\n\rActionDetails\x12\x0c\n\x04type\x18\x01 \x01(\t\"\xb4\x01\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x43ONFIG\x10\x01\x12\x12\n\x0e\x45NTITY_CREATED\x10\x02\x12\x12\n\x0e\x45NTITY_UPDATED\x10\x03\x12\x12\n\x0e\x45NTITY_DELETED\x10\x04\x12\x15\n\x11PARTITION_CREATED\x10\x05\x12\x15\n\x11PARTITION_UPDATED\x10\x06\x12\x15\n\x11PARTITION_DELETED\x10\x07\"A\n\nEntityType\x12\x1b\n\x17\x45NTITY_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05TABLE\x10\x01\x12\x0b\n\x07\x46ILESET\x10\x02\x42\t\n\x07\x64\x65tails\"\xc5\x05\n\x08JobEvent\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x37\n\x05state\x18\x05 \x01(\x0e\x32(.google.cloud.dataplex.v1.JobEvent.State\x12\x0f\n\x07retries\x18\x06 \x01(\x05\x12\x35\n\x04type\x18\x07 \x01(\x0e\x32\'.google.cloud.dataplex.v1.JobEvent.Type\x12;\n\x07service\x18\x08 \x01(\x0e\x32*.google.cloud.dataplex.v1.JobEvent.Service\x12\x13\n\x0bservice_job\x18\t \x01(\t\x12N\n\x11\x65xecution_trigger\x18\x0b \x01(\x0e\x32\x33.google.cloud.dataplex.v1.JobEvent.ExecutionTrigger\"5\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05SPARK\x10\x01\x12\x0c\n\x08NOTEBOOK\x10\x02\"U\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tSUCCEEDED\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\r\n\tCANCELLED\x10\x03\x12\x0b\n\x07\x41\x42ORTED\x10\x04\"0\n\x07Service\x12\x17\n\x13SERVICE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44\x41TAPROC\x10\x01\"W\n\x10\x45xecutionTrigger\x12!\n\x1d\x45XECUTION_TRIGGER_UNSPECIFIED\x10\x00\x12\x0f\n\x0bTASK_CONFIG\x10\x01\x12\x0f\n\x0bRUN_REQUEST\x10\x02\"\xbd\x05\n\x0cSessionEvent\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x0f\n\x07user_id\x18\x02 \x01(\t\x12\x12\n\nsession_id\x18\x03 \x01(\t\x12>\n\x04type\x18\x04 \x01(\x0e\x32\x30.google.cloud.dataplex.v1.SessionEvent.EventType\x12\x43\n\x05query\x18\x05 \x01(\x0b\x32\x32.google.cloud.dataplex.v1.SessionEvent.QueryDetailH\x00\x12\x17\n\x0f\x65vent_succeeded\x18\x06 \x01(\x08\x12\x1c\n\x14\x66\x61st_startup_enabled\x18\x07 \x01(\x08\x12\x36\n\x13unassigned_duration\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\xa3\x02\n\x0bQueryDetail\x12\x10\n\x08query_id\x18\x01 \x01(\t\x12\x12\n\nquery_text\x18\x02 \x01(\t\x12I\n\x06\x65ngine\x18\x03 \x01(\x0e\x32\x39.google.cloud.dataplex.v1.SessionEvent.QueryDetail.Engine\x12+\n\x08\x64uration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x19\n\x11result_size_bytes\x18\x05 \x01(\x03\x12\x1c\n\x14\x64\x61ta_processed_bytes\x18\x06 \x01(\x03\"=\n\x06\x45ngine\x12\x16\n\x12\x45NGINE_UNSPECIFIED\x10\x00\x12\r\n\tSPARK_SQL\x10\x01\x12\x0c\n\x08\x42IGQUERY\x10\x02\"S\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05START\x10\x01\x12\x08\n\x04STOP\x10\x02\x12\t\n\x05QUERY\x10\x03\x12\n\n\x06\x43REATE\x10\x04\x42\x08\n\x06\x64\x65tail\"\xba\x07\n\x0fGovernanceEvent\x12\x0f\n\x07message\x18\x01 \x01(\t\x12G\n\nevent_type\x18\x02 \x01(\x0e\x32\x33.google.cloud.dataplex.v1.GovernanceEvent.EventType\x12\x45\n\x06\x65ntity\x18\x03 \x01(\x0b\x32\x30.google.cloud.dataplex.v1.GovernanceEvent.EntityH\x00\x88\x01\x01\x1a\xd2\x01\n\x06\x45ntity\x12\x33\n\x06\x65ntity\x18\x01 \x01(\tB#\xfa\x41 \n\x1e\x64\x61taplex.googleapis.com/Entity\x12P\n\x0b\x65ntity_type\x18\x02 \x01(\x0e\x32;.google.cloud.dataplex.v1.GovernanceEvent.Entity.EntityType\"A\n\nEntityType\x12\x1b\n\x17\x45NTITY_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05TABLE\x10\x01\x12\x0b\n\x07\x46ILESET\x10\x02\"\xa5\x04\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\x1e\n\x1aRESOURCE_IAM_POLICY_UPDATE\x10\x01\x12\x19\n\x15\x42IGQUERY_TABLE_CREATE\x10\x02\x12\x19\n\x15\x42IGQUERY_TABLE_UPDATE\x10\x03\x12\x19\n\x15\x42IGQUERY_TABLE_DELETE\x10\x04\x12\x1e\n\x1a\x42IGQUERY_CONNECTION_CREATE\x10\x05\x12\x1e\n\x1a\x42IGQUERY_CONNECTION_UPDATE\x10\x06\x12\x1e\n\x1a\x42IGQUERY_CONNECTION_DELETE\x10\x07\x12\x1c\n\x18\x42IGQUERY_TAXONOMY_CREATE\x10\n\x12\x1e\n\x1a\x42IGQUERY_POLICY_TAG_CREATE\x10\x0b\x12\x1e\n\x1a\x42IGQUERY_POLICY_TAG_DELETE\x10\x0c\x12&\n\"BIGQUERY_POLICY_TAG_SET_IAM_POLICY\x10\r\x12\x18\n\x14\x41\x43\x43\x45SS_POLICY_UPDATE\x10\x0e\x12%\n!GOVERNANCE_RULE_MATCHED_RESOURCES\x10\x0f\x12(\n$GOVERNANCE_RULE_SEARCH_LIMIT_EXCEEDS\x10\x10\x12\x1a\n\x16GOVERNANCE_RULE_ERRORS\x10\x11\x12\x1e\n\x1aGOVERNANCE_RULE_PROCESSING\x10\x12\x42\t\n\x07_entity\"\xf3\x12\n\rDataScanEvent\x12\x13\n\x0b\x64\x61ta_source\x18\x01 \x01(\t\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12/\n\x0b\x63reate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12>\n\x04type\x18\x05 \x01(\x0e\x32\x30.google.cloud.dataplex.v1.DataScanEvent.ScanType\x12<\n\x05state\x18\x06 \x01(\x0e\x32-.google.cloud.dataplex.v1.DataScanEvent.State\x12\x0f\n\x07message\x18\x07 \x01(\t\x12\x14\n\x0cspec_version\x18\x08 \x01(\t\x12@\n\x07trigger\x18\t \x01(\x0e\x32/.google.cloud.dataplex.v1.DataScanEvent.Trigger\x12<\n\x05scope\x18\n \x01(\x0e\x32-.google.cloud.dataplex.v1.DataScanEvent.Scope\x12Q\n\x0c\x64\x61ta_profile\x18\x65 \x01(\x0b\x32\x39.google.cloud.dataplex.v1.DataScanEvent.DataProfileResultH\x00\x12Q\n\x0c\x64\x61ta_quality\x18\x66 \x01(\x0b\x32\x39.google.cloud.dataplex.v1.DataScanEvent.DataQualityResultH\x00\x12\x62\n\x14\x64\x61ta_profile_configs\x18\xc9\x01 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.DataScanEvent.DataProfileAppliedConfigsH\x01\x12\x62\n\x14\x64\x61ta_quality_configs\x18\xca\x01 \x01(\x0b\x32\x41.google.cloud.dataplex.v1.DataScanEvent.DataQualityAppliedConfigsH\x01\x12_\n\x18post_scan_actions_result\x18\x0b \x01(\x0b\x32=.google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult\x1a&\n\x11\x44\x61taProfileResult\x12\x11\n\trow_count\x18\x01 \x01(\x03\x1a\x9c\x04\n\x11\x44\x61taQualityResult\x12\x11\n\trow_count\x18\x01 \x01(\x03\x12\x0e\n\x06passed\x18\x02 \x01(\x08\x12h\n\x10\x64imension_passed\x18\x03 \x03(\x0b\x32N.google.cloud.dataplex.v1.DataScanEvent.DataQualityResult.DimensionPassedEntry\x12\r\n\x05score\x18\x04 \x01(\x02\x12\x66\n\x0f\x64imension_score\x18\x05 \x03(\x0b\x32M.google.cloud.dataplex.v1.DataScanEvent.DataQualityResult.DimensionScoreEntry\x12`\n\x0c\x63olumn_score\x18\x06 \x03(\x0b\x32J.google.cloud.dataplex.v1.DataScanEvent.DataQualityResult.ColumnScoreEntry\x1a\x36\n\x14\x44imensionPassedEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x08:\x02\x38\x01\x1a\x35\n\x13\x44imensionScoreEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x02:\x02\x38\x01\x1a\x32\n\x10\x43olumnScoreEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x02:\x02\x38\x01\x1ap\n\x19\x44\x61taProfileAppliedConfigs\x12\x18\n\x10sampling_percent\x18\x01 \x01(\x02\x12\x1a\n\x12row_filter_applied\x18\x02 \x01(\x08\x12\x1d\n\x15\x63olumn_filter_applied\x18\x03 \x01(\x08\x1aQ\n\x19\x44\x61taQualityAppliedConfigs\x12\x18\n\x10sampling_percent\x18\x01 \x01(\x02\x12\x1a\n\x12row_filter_applied\x18\x02 \x01(\x08\x1a\xe6\x02\n\x15PostScanActionsResult\x12r\n\x16\x62igquery_export_result\x18\x01 \x01(\x0b\x32R.google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult.BigQueryExportResult\x1a\xd8\x01\n\x14\x42igQueryExportResult\x12g\n\x05state\x18\x01 \x01(\x0e\x32X.google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult.BigQueryExportResult.State\x12\x0f\n\x07message\x18\x02 \x01(\t\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tSUCCEEDED\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\x0b\n\x07SKIPPED\x10\x03\"I\n\x08ScanType\x12\x19\n\x15SCAN_TYPE_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x44\x41TA_PROFILE\x10\x01\x12\x10\n\x0c\x44\x41TA_QUALITY\x10\x02\"b\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STARTED\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\r\n\tCANCELLED\x10\x04\x12\x0b\n\x07\x43REATED\x10\x05\"?\n\x07Trigger\x12\x17\n\x13TRIGGER_UNSPECIFIED\x10\x00\x12\r\n\tON_DEMAND\x10\x01\x12\x0c\n\x08SCHEDULE\x10\x02\"9\n\x05Scope\x12\x15\n\x11SCOPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x46ULL\x10\x01\x12\x0f\n\x0bINCREMENTAL\x10\x02\x42\x08\n\x06resultB\x10\n\x0e\x61ppliedConfigs\"\xe9\x06\n\x19\x44\x61taQualityScanRuleResult\x12\x0e\n\x06job_id\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x61ta_source\x18\x02 \x01(\t\x12\x0e\n\x06\x63olumn\x18\x03 \x01(\t\x12\x11\n\trule_name\x18\x04 \x01(\t\x12O\n\trule_type\x18\x05 \x01(\x0e\x32<.google.cloud.dataplex.v1.DataQualityScanRuleResult.RuleType\x12Z\n\x0e\x65valution_type\x18\x06 \x01(\x0e\x32\x42.google.cloud.dataplex.v1.DataQualityScanRuleResult.EvaluationType\x12\x16\n\x0erule_dimension\x18\x07 \x01(\t\x12\x19\n\x11threshold_percent\x18\x08 \x01(\x01\x12J\n\x06result\x18\t \x01(\x0e\x32:.google.cloud.dataplex.v1.DataQualityScanRuleResult.Result\x12\x1b\n\x13\x65valuated_row_count\x18\n \x01(\x03\x12\x18\n\x10passed_row_count\x18\x0b \x01(\x03\x12\x16\n\x0enull_row_count\x18\x0c \x01(\x03\"\xff\x01\n\x08RuleType\x12\x19\n\x15RULE_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14NON_NULL_EXPECTATION\x10\x01\x12\x15\n\x11RANGE_EXPECTATION\x10\x02\x12\x15\n\x11REGEX_EXPECTATION\x10\x03\x12\x1d\n\x19ROW_CONDITION_EXPECTATION\x10\x04\x12\x13\n\x0fSET_EXPECTATION\x10\x05\x12\x1f\n\x1bSTATISTIC_RANGE_EXPECTATION\x10\x06\x12\x1f\n\x1bTABLE_CONDITION_EXPECTATION\x10\x07\x12\x1a\n\x16UNIQUENESS_EXPECTATION\x10\x08\"M\n\x0e\x45valuationType\x12\x1f\n\x1b\x45VALUATION_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PER_ROW\x10\x01\x12\r\n\tAGGREGATE\x10\x02\"8\n\x06Result\x12\x16\n\x12RESULT_UNSPECIFIED\x10\x00\x12\n\n\x06PASSED\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x42\x65\n\x1c\x63om.google.cloud.dataplex.v1B\tLogsProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpbb\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Dataplex
      module V1
        DiscoveryEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent").msgclass
        DiscoveryEvent::ConfigDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.ConfigDetails").msgclass
        DiscoveryEvent::EntityDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EntityDetails").msgclass
        DiscoveryEvent::PartitionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.PartitionDetails").msgclass
        DiscoveryEvent::ActionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.ActionDetails").msgclass
        DiscoveryEvent::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EventType").enummodule
        DiscoveryEvent::EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DiscoveryEvent.EntityType").enummodule
        JobEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent").msgclass
        JobEvent::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.Type").enummodule
        JobEvent::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.State").enummodule
        JobEvent::Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.Service").enummodule
        JobEvent::ExecutionTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.JobEvent.ExecutionTrigger").enummodule
        SessionEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent").msgclass
        SessionEvent::QueryDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.QueryDetail").msgclass
        SessionEvent::QueryDetail::Engine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.QueryDetail.Engine").enummodule
        SessionEvent::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.SessionEvent.EventType").enummodule
        GovernanceEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GovernanceEvent").msgclass
        GovernanceEvent::Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GovernanceEvent.Entity").msgclass
        GovernanceEvent::Entity::EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GovernanceEvent.Entity.EntityType").enummodule
        GovernanceEvent::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GovernanceEvent.EventType").enummodule
        DataScanEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent").msgclass
        DataScanEvent::DataProfileResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.DataProfileResult").msgclass
        DataScanEvent::DataQualityResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.DataQualityResult").msgclass
        DataScanEvent::DataProfileAppliedConfigs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.DataProfileAppliedConfigs").msgclass
        DataScanEvent::DataQualityAppliedConfigs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.DataQualityAppliedConfigs").msgclass
        DataScanEvent::PostScanActionsResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult").msgclass
        DataScanEvent::PostScanActionsResult::BigQueryExportResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult.BigQueryExportResult").msgclass
        DataScanEvent::PostScanActionsResult::BigQueryExportResult::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.PostScanActionsResult.BigQueryExportResult.State").enummodule
        DataScanEvent::ScanType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.ScanType").enummodule
        DataScanEvent::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.State").enummodule
        DataScanEvent::Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.Trigger").enummodule
        DataScanEvent::Scope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataScanEvent.Scope").enummodule
        DataQualityScanRuleResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityScanRuleResult").msgclass
        DataQualityScanRuleResult::RuleType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityScanRuleResult.RuleType").enummodule
        DataQualityScanRuleResult::EvaluationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityScanRuleResult.EvaluationType").enummodule
        DataQualityScanRuleResult::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataQualityScanRuleResult.Result").enummodule
      end
    end
  end
end

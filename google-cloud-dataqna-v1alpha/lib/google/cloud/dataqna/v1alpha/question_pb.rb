# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataqna/v1alpha/question.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataqna/v1alpha/annotated_string_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n+google/cloud/dataqna/v1alpha/question.proto\x12\x1cgoogle.cloud.dataqna.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/dataqna/v1alpha/annotated_string.proto\x1a\x19google/protobuf/any.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\x9d\x04\n\x08Question\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x05\x12\x16\n\x06scopes\x18\x02 \x03(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x15\n\x05query\x18\x03 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x1f\n\x17\x64\x61ta_source_annotations\x18\x04 \x03(\t\x12\x45\n\x0finterpret_error\x18\x05 \x01(\x0b\x32,.google.cloud.dataqna.v1alpha.InterpretError\x12\x45\n\x0finterpretations\x18\x06 \x03(\x0b\x32,.google.cloud.dataqna.v1alpha.Interpretation\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x17\n\nuser_email\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x45\n\x0b\x64\x65\x62ug_flags\x18\t \x01(\x0b\x32(.google.cloud.dataqna.v1alpha.DebugFlagsB\x06\xe0\x41\x05\xe0\x41\x04\x12(\n\ndebug_info\x18\n \x01(\x0b\x32\x14.google.protobuf.Any:b\xea\x41_\n\x1f\x64\x61taqna.googleapis.com/Question\x12<projects/{project}/locations/{location}/questions/{question}\"\xdb\x06\n\x0eInterpretError\x12\x0f\n\x07message\x18\x01 \x01(\t\x12M\n\x04\x63ode\x18\x02 \x01(\x0e\x32?.google.cloud.dataqna.v1alpha.InterpretError.InterpretErrorCode\x12S\n\x07\x64\x65tails\x18\x03 \x01(\x0b\x32\x42.google.cloud.dataqna.v1alpha.InterpretError.InterpretErrorDetails\x1a\xd1\x02\n\x15InterpretErrorDetails\x12\x65\n\x13unsupported_details\x18\x01 \x01(\x0b\x32H.google.cloud.dataqna.v1alpha.InterpretError.InterpretUnsupportedDetails\x12n\n\x18incomplete_query_details\x18\x02 \x01(\x0b\x32L.google.cloud.dataqna.v1alpha.InterpretError.InterpretIncompleteQueryDetails\x12\x61\n\x11\x61mbiguity_details\x18\x03 \x01(\x0b\x32\x46.google.cloud.dataqna.v1alpha.InterpretError.InterpretAmbiguityDetails\x1a@\n\x1bInterpretUnsupportedDetails\x12\x11\n\toperators\x18\x01 \x03(\t\x12\x0e\n\x06intent\x18\x02 \x03(\t\x1a\x62\n\x1fInterpretIncompleteQueryDetails\x12?\n\x08\x65ntities\x18\x01 \x03(\x0e\x32-.google.cloud.dataqna.v1alpha.InterpretEntity\x1a\x1b\n\x19InterpretAmbiguityDetails\"}\n\x12InterpretErrorCode\x12$\n INTERPRET_ERROR_CODE_UNSPECIFIED\x10\x00\x12\x11\n\rINVALID_QUERY\x10\x01\x12\x18\n\x14\x46\x41ILED_TO_UNDERSTAND\x10\x02\x12\x14\n\x10\x46\x41ILED_TO_ANSWER\x10\x03\"\x82\x03\n\rExecutionInfo\x12/\n\x13job_creation_status\x18\x01 \x01(\x0b\x32\x12.google.rpc.Status\x12Z\n\x13job_execution_state\x18\x02 \x01(\x0e\x32=.google.cloud.dataqna.v1alpha.ExecutionInfo.JobExecutionState\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12?\n\x0c\x62igquery_job\x18\x04 \x01(\x0b\x32).google.cloud.dataqna.v1alpha.BigQueryJob\"r\n\x11JobExecutionState\x12#\n\x1fJOB_EXECUTION_STATE_UNSPECIFIED\x10\x00\x12\x10\n\x0cNOT_EXECUTED\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\"C\n\x0b\x42igQueryJob\x12\x0e\n\x06job_id\x18\x01 \x01(\t\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x10\n\x08location\x18\x03 \x01(\t\"\xf2\x02\n\x0eInterpretation\x12\x14\n\x0c\x64\x61ta_sources\x18\x01 \x03(\t\x12\x12\n\nconfidence\x18\x02 \x01(\x01\x12\x16\n\x0eunused_phrases\x18\x03 \x03(\t\x12\x43\n\x0ehuman_readable\x18\x04 \x01(\x0b\x32+.google.cloud.dataqna.v1alpha.HumanReadable\x12W\n\x18interpretation_structure\x18\x05 \x01(\x0b\x32\x35.google.cloud.dataqna.v1alpha.InterpretationStructure\x12;\n\ndata_query\x18\x06 \x01(\x0b\x32\'.google.cloud.dataqna.v1alpha.DataQuery\x12\x43\n\x0e\x65xecution_info\x18\x07 \x01(\x0b\x32+.google.cloud.dataqna.v1alpha.ExecutionInfo\"\x18\n\tDataQuery\x12\x0b\n\x03sql\x18\x01 \x01(\t\"\xaa\x01\n\rHumanReadable\x12O\n\x18generated_interpretation\x18\x01 \x01(\x0b\x32-.google.cloud.dataqna.v1alpha.AnnotatedString\x12H\n\x11original_question\x18\x02 \x01(\x0b\x32-.google.cloud.dataqna.v1alpha.AnnotatedString\"\x92\x04\n\x17InterpretationStructure\x12\x64\n\x13visualization_types\x18\x01 \x03(\x0e\x32G.google.cloud.dataqna.v1alpha.InterpretationStructure.VisualizationType\x12U\n\x0b\x63olumn_info\x18\x02 \x03(\x0b\x32@.google.cloud.dataqna.v1alpha.InterpretationStructure.ColumnInfo\x1a\x38\n\nColumnInfo\x12\x14\n\x0coutput_alias\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\"\xff\x01\n\x11VisualizationType\x12\"\n\x1eVISUALIZATION_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05TABLE\x10\x01\x12\r\n\tBAR_CHART\x10\x02\x12\x10\n\x0c\x43OLUMN_CHART\x10\x03\x12\x0c\n\x08TIMELINE\x10\x04\x12\x10\n\x0cSCATTER_PLOT\x10\x05\x12\r\n\tPIE_CHART\x10\x06\x12\x0e\n\nLINE_CHART\x10\x07\x12\x0e\n\nAREA_CHART\x10\x08\x12\x0f\n\x0b\x43OMBO_CHART\x10\t\x12\r\n\tHISTOGRAM\x10\n\x12\x11\n\rGENERIC_CHART\x10\x0b\x12\x18\n\x14\x43HART_NOT_UNDERSTOOD\x10\x0c\"\x95\x03\n\nDebugFlags\x12\x18\n\x10include_va_query\x18\x01 \x01(\x08\x12\x1f\n\x17include_nested_va_query\x18\x02 \x01(\x08\x12$\n\x1cinclude_human_interpretation\x18\x03 \x01(\x08\x12#\n\x1binclude_aqua_debug_response\x18\x04 \x01(\x08\x12\x15\n\rtime_override\x18\x05 \x01(\x03\x12\x1f\n\x17is_internal_google_user\x18\x06 \x01(\x08\x12\x14\n\x0cignore_cache\x18\x07 \x01(\x08\x12#\n\x1binclude_search_entities_rpc\x18\x08 \x01(\x08\x12+\n#include_list_column_annotations_rpc\x18\t \x01(\x08\x12(\n include_virtual_analyst_entities\x18\n \x01(\x08\x12\x1a\n\x12include_table_list\x18\x0b \x01(\x08\x12\x1b\n\x13include_domain_list\x18\x0c \x01(\x08*N\n\x0fInterpretEntity\x12 \n\x1cINTERPRET_ENTITY_UNSPECIFIED\x10\x00\x12\r\n\tDIMENSION\x10\x01\x12\n\n\x06METRIC\x10\x02\x42\xcf\x01\n com.google.cloud.dataqna.v1alphaB\rQuestionProtoP\x01Z:cloud.google.com/go/dataqna/apiv1alpha/dataqnapb;dataqnapb\xaa\x02\x1cGoogle.Cloud.DataQnA.V1Alpha\xca\x02\x1cGoogle\\Cloud\\DataQnA\\V1alpha\xea\x02\x1fGoogle::Cloud::DataQnA::V1alphab\x06proto3"

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
    ["google.protobuf.Any", "google/protobuf/any.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.dataqna.v1alpha.AnnotatedString", "google/cloud/dataqna/v1alpha/annotated_string.proto"],
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
    module DataQnA
      module V1alpha
        Question = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.Question").msgclass
        InterpretError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError").msgclass
        InterpretError::InterpretErrorDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError.InterpretErrorDetails").msgclass
        InterpretError::InterpretUnsupportedDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError.InterpretUnsupportedDetails").msgclass
        InterpretError::InterpretIncompleteQueryDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError.InterpretIncompleteQueryDetails").msgclass
        InterpretError::InterpretAmbiguityDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError.InterpretAmbiguityDetails").msgclass
        InterpretError::InterpretErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretError.InterpretErrorCode").enummodule
        ExecutionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.ExecutionInfo").msgclass
        ExecutionInfo::JobExecutionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.ExecutionInfo.JobExecutionState").enummodule
        BigQueryJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.BigQueryJob").msgclass
        Interpretation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.Interpretation").msgclass
        DataQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.DataQuery").msgclass
        HumanReadable = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.HumanReadable").msgclass
        InterpretationStructure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretationStructure").msgclass
        InterpretationStructure::ColumnInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretationStructure.ColumnInfo").msgclass
        InterpretationStructure::VisualizationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretationStructure.VisualizationType").enummodule
        DebugFlags = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.DebugFlags").msgclass
        InterpretEntity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.InterpretEntity").enummodule
      end
    end
  end
end

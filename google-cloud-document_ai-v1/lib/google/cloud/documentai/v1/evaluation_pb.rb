# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1/evaluation.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n+google/cloud/documentai/v1/evaluation.proto\x12\x1agoogle.cloud.documentai.v1\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x83\x02\n\x13\x45valuationReference\x12\x11\n\toperation\x18\x01 \x01(\t\x12=\n\nevaluation\x18\x02 \x01(\tB)\xfa\x41&\n$documentai.googleapis.com/Evaluation\x12I\n\x11\x61ggregate_metrics\x18\x04 \x01(\x0b\x32..google.cloud.documentai.v1.Evaluation.Metrics\x12O\n\x17\x61ggregate_metrics_exact\x18\x05 \x01(\x0b\x32..google.cloud.documentai.v1.Evaluation.Metrics\"\xe5\r\n\nEvaluation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12/\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12J\n\x11\x64ocument_counters\x18\x05 \x01(\x0b\x32/.google.cloud.documentai.v1.Evaluation.Counters\x12[\n\x14\x61ll_entities_metrics\x18\x03 \x01(\x0b\x32=.google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics\x12Q\n\x0e\x65ntity_metrics\x18\x04 \x03(\x0b\x32\x39.google.cloud.documentai.v1.Evaluation.EntityMetricsEntry\x12\x14\n\x0ckms_key_name\x18\x06 \x01(\t\x12\x1c\n\x14kms_key_version_name\x18\x07 \x01(\t\x1a\x8d\x01\n\x08\x43ounters\x12\x1d\n\x15input_documents_count\x18\x01 \x01(\x05\x12\x1f\n\x17invalid_documents_count\x18\x02 \x01(\x05\x12\x1e\n\x16\x66\x61iled_documents_count\x18\x03 \x01(\x05\x12!\n\x19\x65valuated_documents_count\x18\x04 \x01(\x05\x1a\xcd\x02\n\x07Metrics\x12\x11\n\tprecision\x18\x01 \x01(\x02\x12\x0e\n\x06recall\x18\x02 \x01(\x02\x12\x10\n\x08\x66\x31_score\x18\x03 \x01(\x02\x12#\n\x1bpredicted_occurrences_count\x18\x04 \x01(\x05\x12&\n\x1eground_truth_occurrences_count\x18\x05 \x01(\x05\x12 \n\x18predicted_document_count\x18\n \x01(\x05\x12#\n\x1bground_truth_document_count\x18\x0b \x01(\x05\x12\x1c\n\x14true_positives_count\x18\x06 \x01(\x05\x12\x1d\n\x15\x66\x61lse_positives_count\x18\x07 \x01(\x05\x12\x1d\n\x15\x66\x61lse_negatives_count\x18\x08 \x01(\x05\x12\x1d\n\x15total_documents_count\x18\t \x01(\x05\x1as\n\x16\x43onfidenceLevelMetrics\x12\x18\n\x10\x63onfidence_level\x18\x01 \x01(\x02\x12?\n\x07metrics\x18\x02 \x01(\x0b\x32..google.cloud.documentai.v1.Evaluation.Metrics\x1a\xf1\x03\n\x16MultiConfidenceMetrics\x12_\n\x18\x63onfidence_level_metrics\x18\x01 \x03(\x0b\x32=.google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics\x12\x65\n\x1e\x63onfidence_level_metrics_exact\x18\x04 \x03(\x0b\x32=.google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics\x12\r\n\x05\x61uprc\x18\x02 \x01(\x02\x12#\n\x1b\x65stimated_calibration_error\x18\x03 \x01(\x02\x12\x13\n\x0b\x61uprc_exact\x18\x05 \x01(\x02\x12)\n!estimated_calibration_error_exact\x18\x06 \x01(\x02\x12_\n\x0cmetrics_type\x18\x07 \x01(\x0e\x32I.google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics.MetricsType\":\n\x0bMetricsType\x12\x1c\n\x18METRICS_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tAGGREGATE\x10\x01\x1as\n\x12\x45ntityMetricsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12L\n\x05value\x18\x02 \x01(\x0b\x32=.google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics:\x02\x38\x01:\xa9\x01\xea\x41\xa5\x01\n$documentai.googleapis.com/Evaluation\x12}projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}/evaluations/{evaluation}B\xd2\x01\n\x1e\x63om.google.cloud.documentai.v1B\x14\x44ocumentAiEvaluationP\x01Z>cloud.google.com/go/documentai/apiv1/documentaipb;documentaipb\xaa\x02\x1aGoogle.Cloud.DocumentAI.V1\xca\x02\x1aGoogle\\Cloud\\DocumentAI\\V1\xea\x02\x1dGoogle::Cloud::DocumentAI::V1b\x06proto3"

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
    module DocumentAI
      module V1
        EvaluationReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EvaluationReference").msgclass
        Evaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation").msgclass
        Evaluation::Counters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.Counters").msgclass
        Evaluation::Metrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.Metrics").msgclass
        Evaluation::ConfidenceLevelMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics").msgclass
        Evaluation::MultiConfidenceMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics").msgclass
        Evaluation::MultiConfidenceMetrics::MetricsType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics.MetricsType").enummodule
      end
    end
  end
end

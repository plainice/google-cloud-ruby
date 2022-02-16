# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/feature_monitoring_stats.proto

require 'google/api/annotations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/feature_monitoring_stats.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.FeatureStatsAnomaly" do
      optional :score, :double, 1
      optional :stats_uri, :string, 3
      optional :anomaly_uri, :string, 4
      optional :distribution_deviation, :double, 5
      optional :anomaly_detection_threshold, :double, 9
      optional :start_time, :message, 7, "google.protobuf.Timestamp"
      optional :end_time, :message, 8, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        FeatureStatsAnomaly = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureStatsAnomaly").msgclass
      end
    end
  end
end

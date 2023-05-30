# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/session.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/audio_config_pb'
require 'google/cloud/dialogflow/v2/context_pb'
require 'google/cloud/dialogflow/v2/intent_pb'
require 'google/cloud/dialogflow/v2/session_entity_type_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/rpc/status_pb'
require 'google/type/latlng_pb'


descriptor_data = "\n(google/cloud/dialogflow/v2/session.proto\x12\x1agoogle.cloud.dialogflow.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/dialogflow/v2/audio_config.proto\x1a(google/cloud/dialogflow/v2/context.proto\x1a\'google/cloud/dialogflow/v2/intent.proto\x1a\x34google/cloud/dialogflow/v2/session_entity_type.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x17google/rpc/status.proto\x1a\x18google/type/latlng.proto\"\xf5\x02\n\x13\x44\x65tectIntentRequest\x12:\n\x07session\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x41\n\x0cquery_params\x18\x02 \x01(\x0b\x32+.google.cloud.dialogflow.v2.QueryParameters\x12@\n\x0bquery_input\x18\x03 \x01(\x0b\x32&.google.cloud.dialogflow.v2.QueryInputB\x03\xe0\x41\x02\x12J\n\x13output_audio_config\x18\x04 \x01(\x0b\x32-.google.cloud.dialogflow.v2.OutputAudioConfig\x12<\n\x18output_audio_config_mask\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x13\n\x0binput_audio\x18\x05 \x01(\x0c\"\xf8\x01\n\x14\x44\x65tectIntentResponse\x12\x13\n\x0bresponse_id\x18\x01 \x01(\t\x12=\n\x0cquery_result\x18\x02 \x01(\x0b\x32\'.google.cloud.dialogflow.v2.QueryResult\x12*\n\x0ewebhook_status\x18\x03 \x01(\x0b\x32\x12.google.rpc.Status\x12\x14\n\x0coutput_audio\x18\x04 \x01(\x0c\x12J\n\x13output_audio_config\x18\x06 \x01(\x0b\x32-.google.cloud.dialogflow.v2.OutputAudioConfig\"\x8d\x04\n\x0fQueryParameters\x12\x11\n\ttime_zone\x18\x01 \x01(\t\x12)\n\x0cgeo_location\x18\x02 \x01(\x0b\x32\x13.google.type.LatLng\x12\x35\n\x08\x63ontexts\x18\x03 \x03(\x0b\x32#.google.cloud.dialogflow.v2.Context\x12\x16\n\x0ereset_contexts\x18\x04 \x01(\x08\x12K\n\x14session_entity_types\x18\x05 \x03(\x0b\x32-.google.cloud.dialogflow.v2.SessionEntityType\x12(\n\x07payload\x18\x06 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x65\n!sentiment_analysis_request_config\x18\n \x01(\x0b\x32:.google.cloud.dialogflow.v2.SentimentAnalysisRequestConfig\x12X\n\x0fwebhook_headers\x18\x0e \x03(\x0b\x32?.google.cloud.dialogflow.v2.QueryParameters.WebhookHeadersEntry\x1a\x35\n\x13WebhookHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xcb\x01\n\nQueryInput\x12\x44\n\x0c\x61udio_config\x18\x01 \x01(\x0b\x32,.google.cloud.dialogflow.v2.InputAudioConfigH\x00\x12\x35\n\x04text\x18\x02 \x01(\x0b\x32%.google.cloud.dialogflow.v2.TextInputH\x00\x12\x37\n\x05\x65vent\x18\x03 \x01(\x0b\x32&.google.cloud.dialogflow.v2.EventInputH\x00\x42\x07\n\x05input\"\xae\x05\n\x0bQueryResult\x12\x12\n\nquery_text\x18\x01 \x01(\t\x12\x15\n\rlanguage_code\x18\x0f \x01(\t\x12%\n\x1dspeech_recognition_confidence\x18\x02 \x01(\x02\x12\x0e\n\x06\x61\x63tion\x18\x03 \x01(\t\x12+\n\nparameters\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12#\n\x1b\x61ll_required_params_present\x18\x05 \x01(\x08\x12\x1c\n\x14\x63\x61ncels_slot_filling\x18\x15 \x01(\x08\x12\x18\n\x10\x66ulfillment_text\x18\x06 \x01(\t\x12H\n\x14\x66ulfillment_messages\x18\x07 \x03(\x0b\x32*.google.cloud.dialogflow.v2.Intent.Message\x12\x16\n\x0ewebhook_source\x18\x08 \x01(\t\x12\x30\n\x0fwebhook_payload\x18\t \x01(\x0b\x32\x17.google.protobuf.Struct\x12<\n\x0foutput_contexts\x18\n \x03(\x0b\x32#.google.cloud.dialogflow.v2.Context\x12\x32\n\x06intent\x18\x0b \x01(\x0b\x32\".google.cloud.dialogflow.v2.Intent\x12#\n\x1bintent_detection_confidence\x18\x0c \x01(\x02\x12\x30\n\x0f\x64iagnostic_info\x18\x0e \x01(\x0b\x32\x17.google.protobuf.Struct\x12V\n\x19sentiment_analysis_result\x18\x11 \x01(\x0b\x32\x33.google.cloud.dialogflow.v2.SentimentAnalysisResult\"\xbb\x03\n\x1cStreamingDetectIntentRequest\x12:\n\x07session\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x41\n\x0cquery_params\x18\x02 \x01(\x0b\x32+.google.cloud.dialogflow.v2.QueryParameters\x12@\n\x0bquery_input\x18\x03 \x01(\x0b\x32&.google.cloud.dialogflow.v2.QueryInputB\x03\xe0\x41\x02\x12\x1c\n\x10single_utterance\x18\x04 \x01(\x08\x42\x02\x18\x01\x12J\n\x13output_audio_config\x18\x05 \x01(\x0b\x32-.google.cloud.dialogflow.v2.OutputAudioConfig\x12<\n\x18output_audio_config_mask\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x13\n\x0binput_audio\x18\x06 \x01(\x0c\x12\x1d\n\x15\x65nable_debugging_info\x18\x08 \x01(\x08\"\xf8\x06\n\x1e\x43loudConversationDebuggingInfo\x12\x19\n\x11\x61udio_data_chunks\x18\x01 \x01(\x05\x12\x39\n\x16result_end_time_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x37\n\x14\x66irst_audio_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x18\n\x10single_utterance\x18\x05 \x01(\x08\x12\x43\n speech_partial_results_end_times\x18\x06 \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x41\n\x1espeech_final_results_end_times\x18\x07 \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x19\n\x11partial_responses\x18\x08 \x01(\x05\x12,\n$speaker_id_passive_latency_ms_offset\x18\t \x01(\x05\x12\x1f\n\x17\x62\x61rgein_event_triggered\x18\n \x01(\x08\x12\x1f\n\x17speech_single_utterance\x18\x0b \x01(\x08\x12=\n\x1a\x64tmf_partial_results_times\x18\x0c \x03(\x0b\x32\x19.google.protobuf.Duration\x12;\n\x18\x64tmf_final_results_times\x18\r \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x43\n single_utterance_end_time_offset\x18\x0e \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x34\n\x11no_speech_timeout\x18\x0f \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x15\n\ris_input_text\x18\x10 \x01(\x08\x12@\n\x1d\x63lient_half_close_time_offset\x18\x11 \x01(\x0b\x32\x19.google.protobuf.Duration\x12J\n\'client_half_close_streaming_time_offset\x18\x12 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xa9\x03\n\x1dStreamingDetectIntentResponse\x12\x13\n\x0bresponse_id\x18\x01 \x01(\t\x12R\n\x12recognition_result\x18\x02 \x01(\x0b\x32\x36.google.cloud.dialogflow.v2.StreamingRecognitionResult\x12=\n\x0cquery_result\x18\x03 \x01(\x0b\x32\'.google.cloud.dialogflow.v2.QueryResult\x12*\n\x0ewebhook_status\x18\x04 \x01(\x0b\x32\x12.google.rpc.Status\x12\x14\n\x0coutput_audio\x18\x05 \x01(\x0c\x12J\n\x13output_audio_config\x18\x06 \x01(\x0b\x32-.google.cloud.dialogflow.v2.OutputAudioConfig\x12R\n\x0e\x64\x65\x62ugging_info\x18\x08 \x01(\x0b\x32:.google.cloud.dialogflow.v2.CloudConversationDebuggingInfo\"\x9d\x03\n\x1aStreamingRecognitionResult\x12X\n\x0cmessage_type\x18\x01 \x01(\x0e\x32\x42.google.cloud.dialogflow.v2.StreamingRecognitionResult.MessageType\x12\x12\n\ntranscript\x18\x02 \x01(\t\x12\x10\n\x08is_final\x18\x03 \x01(\x08\x12\x12\n\nconfidence\x18\x04 \x01(\x02\x12\x44\n\x10speech_word_info\x18\x07 \x03(\x0b\x32*.google.cloud.dialogflow.v2.SpeechWordInfo\x12\x34\n\x11speech_end_offset\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x15\n\rlanguage_code\x18\n \x01(\t\"X\n\x0bMessageType\x12\x1c\n\x18MESSAGE_TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nTRANSCRIPT\x10\x01\x12\x1b\n\x17\x45ND_OF_SINGLE_UTTERANCE\x10\x02\":\n\tTextInput\x12\x11\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\"h\n\nEventInput\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12+\n\nparameters\x18\x02 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x1a\n\rlanguage_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\"F\n\x1eSentimentAnalysisRequestConfig\x12$\n\x1c\x61nalyze_query_text_sentiment\x18\x01 \x01(\x08\"^\n\x17SentimentAnalysisResult\x12\x43\n\x14query_text_sentiment\x18\x01 \x01(\x0b\x32%.google.cloud.dialogflow.v2.Sentiment\"-\n\tSentiment\x12\r\n\x05score\x18\x01 \x01(\x02\x12\x11\n\tmagnitude\x18\x02 \x01(\x02\x32\xe5\x05\n\x08Sessions\x12\xc9\x03\n\x0c\x44\x65tectIntent\x12/.google.cloud.dialogflow.v2.DetectIntentRequest\x1a\x30.google.cloud.dialogflow.v2.DetectIntentResponse\"\xd5\x02\x82\xd3\xe4\x93\x02\xb8\x02\"6/v2/{session=projects/*/agent/sessions/*}:detectIntent:\x01*ZR\"M/v2/{session=projects/*/agent/environments/*/users/*/sessions/*}:detectIntent:\x01*ZG\"B/v2/{session=projects/*/locations/*/agent/sessions/*}:detectIntent:\x01*Z^\"Y/v2/{session=projects/*/locations/*/agent/environments/*/users/*/sessions/*}:detectIntent:\x01*\xda\x41\x13session,query_input\x12\x92\x01\n\x15StreamingDetectIntent\x12\x38.google.cloud.dialogflow.v2.StreamingDetectIntentRequest\x1a\x39.google.cloud.dialogflow.v2.StreamingDetectIntentResponse\"\x00(\x01\x30\x01\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xea\x03\n\x1e\x63om.google.cloud.dialogflow.v2B\x0cSessionProtoP\x01Z>cloud.google.com/go/dialogflow/apiv2/dialogflowpb;dialogflowpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1aGoogle.Cloud.Dialogflow.V2\xea\x41\xd1\x02\n!dialogflow.googleapis.com/Session\x12+projects/{project}/agent/sessions/{session}\x12Sprojects/{project}/agent/environments/{environment}/users/{user}/sessions/{session}\x12@projects/{project}/locations/{location}/agent/sessions/{session}\x12hprojects/{project}/locations/{location}/agent/environments/{environment}/users/{user}/sessions/{session}b\x06proto3"

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
    ["google.cloud.dialogflow.v2.OutputAudioConfig", "google/cloud/dialogflow/v2/audio_config.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.cloud.dialogflow.v2.Context", "google/cloud/dialogflow/v2/context.proto"],
    ["google.cloud.dialogflow.v2.SessionEntityType", "google/cloud/dialogflow/v2/session_entity_type.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.cloud.dialogflow.v2.Intent.Message", "google/cloud/dialogflow/v2/intent.proto"],
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
    module Dialogflow
      module V2
        DetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DetectIntentRequest").msgclass
        DetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DetectIntentResponse").msgclass
        QueryParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryParameters").msgclass
        QueryInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryInput").msgclass
        QueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryResult").msgclass
        StreamingDetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingDetectIntentRequest").msgclass
        CloudConversationDebuggingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CloudConversationDebuggingInfo").msgclass
        StreamingDetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingDetectIntentResponse").msgclass
        StreamingRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingRecognitionResult").msgclass
        StreamingRecognitionResult::MessageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingRecognitionResult.MessageType").enummodule
        TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.TextInput").msgclass
        EventInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EventInput").msgclass
        SentimentAnalysisRequestConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SentimentAnalysisRequestConfig").msgclass
        SentimentAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SentimentAnalysisResult").msgclass
        Sentiment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Sentiment").msgclass
      end
    end
  end
end

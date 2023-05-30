# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataqna/v1alpha/annotated_string.proto

require 'google/protobuf'


descriptor_data = "\n3google/cloud/dataqna/v1alpha/annotated_string.proto\x12\x1cgoogle.cloud.dataqna.v1alpha\"\x99\x03\n\x0f\x41nnotatedString\x12\x16\n\x0etext_formatted\x18\x01 \x01(\t\x12\x16\n\x0ehtml_formatted\x18\x02 \x01(\t\x12M\n\x07markups\x18\x03 \x03(\x0b\x32<.google.cloud.dataqna.v1alpha.AnnotatedString.SemanticMarkup\x1a\x8a\x01\n\x0eSemanticMarkup\x12N\n\x04type\x18\x01 \x01(\x0e\x32@.google.cloud.dataqna.v1alpha.AnnotatedString.SemanticMarkupType\x12\x18\n\x10start_char_index\x18\x02 \x01(\x05\x12\x0e\n\x06length\x18\x03 \x01(\x05\"z\n\x12SemanticMarkupType\x12\x1b\n\x17MARKUP_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06METRIC\x10\x01\x12\r\n\tDIMENSION\x10\x02\x12\n\n\x06\x46ILTER\x10\x03\x12\n\n\x06UNUSED\x10\x04\x12\x0b\n\x07\x42LOCKED\x10\x05\x12\x07\n\x03ROW\x10\x06\x42\xd6\x01\n com.google.cloud.dataqna.v1alphaB\x14\x41nnotatedStringProtoP\x01Z:cloud.google.com/go/dataqna/apiv1alpha/dataqnapb;dataqnapb\xaa\x02\x1cGoogle.Cloud.DataQnA.V1Alpha\xca\x02\x1cGoogle\\Cloud\\DataQnA\\V1alpha\xea\x02\x1fGoogle::Cloud::DataQnA::V1alphab\x06proto3"

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
        AnnotatedString = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.AnnotatedString").msgclass
        AnnotatedString::SemanticMarkup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.AnnotatedString.SemanticMarkup").msgclass
        AnnotatedString::SemanticMarkupType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.AnnotatedString.SemanticMarkupType").enummodule
      end
    end
  end
end

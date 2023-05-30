# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/binaryauthorization/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/binaryauthorization/v1/resources_pb'
require 'google/protobuf/empty_pb'
require 'grafeas/v1/attestation_pb'


descriptor_data = "\n1google/cloud/binaryauthorization/v1/service.proto\x12#google.cloud.binaryauthorization.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/binaryauthorization/v1/resources.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1cgrafeas/v1/attestation.proto\"S\n\x10GetPolicyRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)binaryauthorization.googleapis.com/Policy\"W\n\x13UpdatePolicyRequest\x12@\n\x06policy\x18\x01 \x01(\x0b\x32+.google.cloud.binaryauthorization.v1.PolicyB\x03\xe0\x41\x02\"\xbc\x01\n\x15\x43reateAttestorRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x18\n\x0b\x61ttestor_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x08\x61ttestor\x18\x03 \x01(\x0b\x32-.google.cloud.binaryauthorization.v1.AttestorB\x03\xe0\x41\x02\"W\n\x12GetAttestorRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+binaryauthorization.googleapis.com/Attestor\"]\n\x15UpdateAttestorRequest\x12\x44\n\x08\x61ttestor\x18\x01 \x01(\x0b\x32-.google.cloud.binaryauthorization.v1.AttestorB\x03\xe0\x41\x02\"\x82\x01\n\x14ListAttestorsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"r\n\x15ListAttestorsResponse\x12@\n\tattestors\x18\x01 \x03(\x0b\x32-.google.cloud.binaryauthorization.v1.Attestor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Z\n\x15\x44\x65leteAttestorRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+binaryauthorization.googleapis.com/Attestor\"Y\n\x16GetSystemPolicyRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)binaryauthorization.googleapis.com/Policy\"\xbe\x01\n$ValidateAttestationOccurrenceRequest\x12\x15\n\x08\x61ttestor\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12;\n\x0b\x61ttestation\x18\x02 \x01(\x0b\x32!.grafeas.v1.AttestationOccurrenceB\x03\xe0\x41\x02\x12\x1c\n\x0foccurrence_note\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12$\n\x17occurrence_resource_uri\x18\x04 \x01(\tB\x03\xe0\x41\x02\"\xf1\x01\n%ValidateAttestationOccurrenceResponse\x12\x61\n\x06result\x18\x01 \x01(\x0e\x32Q.google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceResponse.Result\x12\x15\n\rdenial_reason\x18\x02 \x01(\t\"N\n\x06Result\x12\x16\n\x12RESULT_UNSPECIFIED\x10\x00\x12\x0c\n\x08VERIFIED\x10\x01\x12\x1e\n\x1a\x41TTESTATION_NOT_VERIFIABLE\x10\x02\x32\xe2\n\n\x1b\x42inauthzManagementServiceV1\x12\x9c\x01\n\tGetPolicy\x12\x35.google.cloud.binaryauthorization.v1.GetPolicyRequest\x1a+.google.cloud.binaryauthorization.v1.Policy\"+\x82\xd3\xe4\x93\x02\x1e\x12\x1c/v1/{name=projects/*/policy}\xda\x41\x04name\x12\xb3\x01\n\x0cUpdatePolicy\x12\x38.google.cloud.binaryauthorization.v1.UpdatePolicyRequest\x1a+.google.cloud.binaryauthorization.v1.Policy\"<\x82\xd3\xe4\x93\x02-\x1a#/v1/{policy.name=projects/*/policy}:\x06policy\xda\x41\x06policy\x12\xce\x01\n\x0e\x43reateAttestor\x12:.google.cloud.binaryauthorization.v1.CreateAttestorRequest\x1a-.google.cloud.binaryauthorization.v1.Attestor\"Q\x82\xd3\xe4\x93\x02-\"!/v1/{parent=projects/*}/attestors:\x08\x61ttestor\xda\x41\x1bparent,attestor_id,attestor\x12\xa7\x01\n\x0bGetAttestor\x12\x37.google.cloud.binaryauthorization.v1.GetAttestorRequest\x1a-.google.cloud.binaryauthorization.v1.Attestor\"0\x82\xd3\xe4\x93\x02#\x12!/v1/{name=projects/*/attestors/*}\xda\x41\x04name\x12\xc4\x01\n\x0eUpdateAttestor\x12:.google.cloud.binaryauthorization.v1.UpdateAttestorRequest\x1a-.google.cloud.binaryauthorization.v1.Attestor\"G\x82\xd3\xe4\x93\x02\x36\x1a*/v1/{attestor.name=projects/*/attestors/*}:\x08\x61ttestor\xda\x41\x08\x61ttestor\x12\xba\x01\n\rListAttestors\x12\x39.google.cloud.binaryauthorization.v1.ListAttestorsRequest\x1a:.google.cloud.binaryauthorization.v1.ListAttestorsResponse\"2\x82\xd3\xe4\x93\x02#\x12!/v1/{parent=projects/*}/attestors\xda\x41\x06parent\x12\x96\x01\n\x0e\x44\x65leteAttestor\x12:.google.cloud.binaryauthorization.v1.DeleteAttestorRequest\x1a\x16.google.protobuf.Empty\"0\x82\xd3\xe4\x93\x02#*!/v1/{name=projects/*/attestors/*}\xda\x41\x04name\x1aV\xca\x41\"binaryauthorization.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platform2\x94\x02\n\x0eSystemPolicyV1\x12\xa9\x01\n\x0fGetSystemPolicy\x12;.google.cloud.binaryauthorization.v1.GetSystemPolicyRequest\x1a+.google.cloud.binaryauthorization.v1.Policy\",\x82\xd3\xe4\x93\x02\x1f\x12\x1d/v1/{name=locations/*/policy}\xda\x41\x04name\x1aV\xca\x41\"binaryauthorization.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platform2\xf5\x02\n\x12ValidationHelperV1\x12\x86\x02\n\x1dValidateAttestationOccurrence\x12I.google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceRequest\x1aJ.google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceResponse\"N\x82\xd3\xe4\x93\x02H\"C/v1/{attestor=projects/*/attestors/*}:validateAttestationOccurrence:\x01*\x1aV\xca\x41\"binaryauthorization.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x8c\x02\n5com.google.protos.google.cloud.binaryauthorization.v1P\x00ZYcloud.google.com/go/binaryauthorization/apiv1/binaryauthorizationpb;binaryauthorizationpb\xf8\x01\x01\xaa\x02#Google.Cloud.BinaryAuthorization.V1\xca\x02#Google\\Cloud\\BinaryAuthorization\\V1\xea\x02&Google::Cloud::BinaryAuthorization::V1b\x06proto3"

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
    ["google.cloud.binaryauthorization.v1.Policy", "google/cloud/binaryauthorization/v1/resources.proto"],
    ["grafeas.v1.AttestationOccurrence", "grafeas/v1/attestation.proto"],
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
    module BinaryAuthorization
      module V1
        GetPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.GetPolicyRequest").msgclass
        UpdatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.UpdatePolicyRequest").msgclass
        CreateAttestorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.CreateAttestorRequest").msgclass
        GetAttestorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.GetAttestorRequest").msgclass
        UpdateAttestorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.UpdateAttestorRequest").msgclass
        ListAttestorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.ListAttestorsRequest").msgclass
        ListAttestorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.ListAttestorsResponse").msgclass
        DeleteAttestorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.DeleteAttestorRequest").msgclass
        GetSystemPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.GetSystemPolicyRequest").msgclass
        ValidateAttestationOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceRequest").msgclass
        ValidateAttestationOccurrenceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceResponse").msgclass
        ValidateAttestationOccurrenceResponse::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.binaryauthorization.v1.ValidateAttestationOccurrenceResponse.Result").enummodule
      end
    end
  end
end

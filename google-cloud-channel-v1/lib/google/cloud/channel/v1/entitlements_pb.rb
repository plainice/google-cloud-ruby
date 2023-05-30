# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/entitlements.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/channel/v1/common_pb'
require 'google/cloud/channel/v1/offers_pb'
require 'google/cloud/channel/v1/products_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/channel/v1/entitlements.proto\x12\x17google.cloud.channel.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a$google/cloud/channel/v1/common.proto\x1a$google/cloud/channel/v1/offers.proto\x1a&google/cloud/channel/v1/products.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfb\x08\n\x0b\x45ntitlement\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x38\n\x05offer\x18\x08 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudchannel.googleapis.com/Offer\x12H\n\x13\x63ommitment_settings\x18\x0c \x01(\x0b\x32+.google.cloud.channel.v1.CommitmentSettings\x12W\n\x12provisioning_state\x18\r \x01(\x0e\x32\x36.google.cloud.channel.v1.Entitlement.ProvisioningStateB\x03\xe0\x41\x03\x12M\n\x13provisioned_service\x18\x10 \x01(\x0b\x32+.google.cloud.channel.v1.ProvisionedServiceB\x03\xe0\x41\x03\x12V\n\x12suspension_reasons\x18\x12 \x03(\x0e\x32\x35.google.cloud.channel.v1.Entitlement.SuspensionReasonB\x03\xe0\x41\x03\x12\x1e\n\x11purchase_order_id\x18\x13 \x01(\tB\x03\xe0\x41\x01\x12\x43\n\x0etrial_settings\x18\x15 \x01(\x0b\x32&.google.cloud.channel.v1.TrialSettingsB\x03\xe0\x41\x03\x12\x42\n\x10\x61ssociation_info\x18\x17 \x01(\x0b\x32(.google.cloud.channel.v1.AssociationInfo\x12\x36\n\nparameters\x18\x1a \x03(\x0b\x32\".google.cloud.channel.v1.Parameter\x12\x1c\n\x0f\x62illing_account\x18\x1c \x01(\tB\x03\xe0\x41\x01\"R\n\x11ProvisioningState\x12\"\n\x1ePROVISIONING_STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\r\n\tSUSPENDED\x10\x05\"\xa3\x01\n\x10SuspensionReason\x12!\n\x1dSUSPENSION_REASON_UNSPECIFIED\x10\x00\x12\x16\n\x12RESELLER_INITIATED\x10\x01\x12\x0f\n\x0bTRIAL_ENDED\x10\x02\x12\x1c\n\x18RENEWAL_WITH_TYPE_CANCEL\x10\x03\x12\x1a\n\x16PENDING_TOS_ACCEPTANCE\x10\x04\x12\t\n\x05OTHER\x10\x64:p\xea\x41m\n\'cloudchannel.googleapis.com/Entitlement\x12\x42\x61\x63\x63ounts/{account}/customers/{customer}/entitlements/{entitlement}\"_\n\tParameter\x12\x0c\n\x04name\x18\x01 \x01(\t\x12-\n\x05value\x18\x02 \x01(\x0b\x32\x1e.google.cloud.channel.v1.Value\x12\x15\n\x08\x65\x64itable\x18\x03 \x01(\x08\x42\x03\xe0\x41\x03\"Y\n\x0f\x41ssociationInfo\x12\x46\n\x10\x62\x61se_entitlement\x18\x01 \x01(\tB,\xfa\x41)\n\'cloudchannel.googleapis.com/Entitlement\"`\n\x12ProvisionedService\x12\x1c\n\x0fprovisioning_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nproduct_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x06sku_id\x18\x03 \x01(\tB\x03\xe0\x41\x03\"\xc5\x01\n\x12\x43ommitmentSettings\x12\x33\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12G\n\x10renewal_settings\x18\x04 \x01(\x0b\x32(.google.cloud.channel.v1.RenewalSettingsB\x03\xe0\x41\x01\"\xb8\x01\n\x0fRenewalSettings\x12\x16\n\x0e\x65nable_renewal\x18\x01 \x01(\x08\x12\x19\n\x11resize_unit_count\x18\x02 \x01(\x08\x12:\n\x0cpayment_plan\x18\x05 \x01(\x0e\x32$.google.cloud.channel.v1.PaymentPlan\x12\x36\n\rpayment_cycle\x18\x06 \x01(\x0b\x32\x1f.google.cloud.channel.v1.Period\"L\n\rTrialSettings\x12\r\n\x05trial\x18\x01 \x01(\x08\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xbf\x01\n\x0fTransferableSku\x12J\n\x14transfer_eligibility\x18\t \x01(\x0b\x32,.google.cloud.channel.v1.TransferEligibility\x12)\n\x03sku\x18\x0b \x01(\x0b\x32\x1c.google.cloud.channel.v1.Sku\x12\x35\n\nlegacy_sku\x18\x0c \x01(\x0b\x32\x1c.google.cloud.channel.v1.SkuB\x03\xe0\x41\x01\"\xf9\x01\n\x13TransferEligibility\x12\x13\n\x0bis_eligible\x18\x01 \x01(\x08\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12Q\n\x14ineligibility_reason\x18\x03 \x01(\x0e\x32\x33.google.cloud.channel.v1.TransferEligibility.Reason\"e\n\x06Reason\x12\x16\n\x12REASON_UNSPECIFIED\x10\x00\x12\x1a\n\x16PENDING_TOS_ACCEPTANCE\x10\x01\x12\x14\n\x10SKU_NOT_ELIGIBLE\x10\x02\x12\x11\n\rSKU_SUSPENDED\x10\x03\x42i\n\x1b\x63om.google.cloud.channel.v1B\x11\x45ntitlementsProtoP\x01Z5cloud.google.com/go/channel/apiv1/channelpb;channelpbb\x06proto3"

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
    ["google.cloud.channel.v1.Value", "google/cloud/channel/v1/common.proto"],
    ["google.cloud.channel.v1.Period", "google/cloud/channel/v1/offers.proto"],
    ["google.cloud.channel.v1.Sku", "google/cloud/channel/v1/products.proto"],
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
    module Channel
      module V1
        Entitlement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement").msgclass
        Entitlement::ProvisioningState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement.ProvisioningState").enummodule
        Entitlement::SuspensionReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement.SuspensionReason").enummodule
        Parameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Parameter").msgclass
        AssociationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.AssociationInfo").msgclass
        ProvisionedService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.ProvisionedService").msgclass
        CommitmentSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CommitmentSettings").msgclass
        RenewalSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RenewalSettings").msgclass
        TrialSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TrialSettings").msgclass
        TransferableSku = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferableSku").msgclass
        TransferEligibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferEligibility").msgclass
        TransferEligibility::Reason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferEligibility.Reason").enummodule
      end
    end
  end
end

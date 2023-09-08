# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Channel
      module V1
        # Entity representing a customer of a reseller or distributor.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the customer.
        #     Format: accounts/\\{account_id}/customers/\\{customer_id}
        # @!attribute [rw] org_display_name
        #   @return [::String]
        #     Required. Name of the organization that the customer entity represents.
        # @!attribute [rw] org_postal_address
        #   @return [::Google::Type::PostalAddress]
        #     Required. The organization address for the customer. To enforce US laws and
        #     embargoes, we require a region, postal code, and address lines. You must
        #     provide valid addresses for every customer. To set the customer's
        #     language, use the Customer-level language code.
        # @!attribute [rw] primary_contact_info
        #   @return [::Google::Cloud::Channel::V1::ContactInfo]
        #     Primary contact info.
        # @!attribute [rw] alternate_email
        #   @return [::String]
        #     Secondary contact email. You need to provide an alternate email to create
        #     different domains if a primary contact email already exists. Users will
        #     receive a notification with credentials when you create an admin.google.com
        #     account. Secondary emails are also recovery email addresses. Alternate
        #     emails are optional when you create Team customers.
        # @!attribute [rw] domain
        #   @return [::String]
        #     Required. The customer's primary domain. Must match the primary contact
        #     email's domain.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the customer was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the customer was updated.
        # @!attribute [r] cloud_identity_id
        #   @return [::String]
        #     Output only. The customer's Cloud Identity ID if the customer has a Cloud
        #     Identity resource.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". For more
        #     information, see
        #     https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # @!attribute [r] cloud_identity_info
        #   @return [::Google::Cloud::Channel::V1::CloudIdentityInfo]
        #     Output only. Cloud Identity information for the customer.
        #     Populated only if a Cloud Identity account exists for this customer.
        # @!attribute [rw] channel_partner_id
        #   @return [::String]
        #     Cloud Identity ID of the customer's channel partner.
        #     Populated only if a channel partner exists for this customer.
        # @!attribute [rw] correlation_id
        #   @return [::String]
        #     Optional. External CRM ID for the customer.
        #     Populated only if a CRM ID exists for this customer.
        class Customer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Contact information for a customer account.
        # @!attribute [rw] first_name
        #   @return [::String]
        #     The customer account contact's first name. Optional for Team customers.
        # @!attribute [rw] last_name
        #   @return [::String]
        #     The customer account contact's last name. Optional for Team customers.
        # @!attribute [r] display_name
        #   @return [::String]
        #     Output only. The customer account contact's display name, formatted as a
        #     combination of the customer's first and last name.
        # @!attribute [rw] email
        #   @return [::String]
        #     The customer account's contact email. Required for entitlements that create
        #     admin.google.com accounts, and serves as the customer's username for those
        #     accounts. Use this email to invite Team customers.
        # @!attribute [rw] title
        #   @return [::String]
        #     Optional. The customer account contact's job title.
        # @!attribute [rw] phone
        #   @return [::String]
        #     The customer account's contact phone number.
        class ContactInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

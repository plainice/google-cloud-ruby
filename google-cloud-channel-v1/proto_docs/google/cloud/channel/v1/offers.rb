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
        # Represents an offer made to resellers for purchase.
        # An offer is associated with a {::Google::Cloud::Channel::V1::Sku Sku}, has a plan
        # for payment, a price, and defines the constraints for buying.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource Name of the Offer.
        #     Format: accounts/\\{account_id}/offers/\\{offer_id}
        # @!attribute [rw] marketing_info
        #   @return [::Google::Cloud::Channel::V1::MarketingInfo]
        #     Marketing information for the Offer.
        # @!attribute [rw] sku
        #   @return [::Google::Cloud::Channel::V1::Sku]
        #     SKU the offer is associated with.
        # @!attribute [rw] plan
        #   @return [::Google::Cloud::Channel::V1::Plan]
        #     Describes the payment plan for the Offer.
        # @!attribute [rw] constraints
        #   @return [::Google::Cloud::Channel::V1::Constraints]
        #     Constraints on transacting the Offer.
        # @!attribute [rw] price_by_resources
        #   @return [::Array<::Google::Cloud::Channel::V1::PriceByResource>]
        #     Price for each monetizable resource type.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Start of the Offer validity time.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. End of the Offer validity time.
        # @!attribute [rw] parameter_definitions
        #   @return [::Array<::Google::Cloud::Channel::V1::ParameterDefinition>]
        #     Parameters required to use current Offer to purchase.
        # @!attribute [rw] deal_code
        #   @return [::String]
        #     The deal code of the offer to get a special promotion or discount.
        class Offer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Parameter's definition. Specifies what parameter is required to use the
        # current Offer to purchase.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the parameter.
        # @!attribute [rw] parameter_type
        #   @return [::Google::Cloud::Channel::V1::ParameterDefinition::ParameterType]
        #     Data type of the parameter. Minimal value, Maximum value and allowed values
        #     will use specified data type here.
        # @!attribute [rw] min_value
        #   @return [::Google::Cloud::Channel::V1::Value]
        #     Minimal value of the parameter, if applicable. Inclusive. For example,
        #     minimal commitment when purchasing Anthos is 0.01.
        #     Applicable to INT64 and DOUBLE parameter types.
        # @!attribute [rw] max_value
        #   @return [::Google::Cloud::Channel::V1::Value]
        #     Maximum value of the parameter, if applicable. Inclusive. For example,
        #     maximum seats when purchasing Google Workspace Business Standard.
        #     Applicable to INT64 and DOUBLE parameter types.
        # @!attribute [rw] allowed_values
        #   @return [::Array<::Google::Cloud::Channel::V1::Value>]
        #     If not empty, parameter values must be drawn from this list.
        #     For example, [us-west1, us-west2, ...]
        #     Applicable to STRING parameter type.
        # @!attribute [rw] optional
        #   @return [::Boolean]
        #     If set to true, parameter is optional to purchase this Offer.
        class ParameterDefinition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Data type of the parameter.
          module ParameterType
            # Not used.
            PARAMETER_TYPE_UNSPECIFIED = 0

            # Int64 type.
            INT64 = 1

            # String type.
            STRING = 2

            # Double type.
            DOUBLE = 3

            # Boolean type.
            BOOLEAN = 4
          end
        end

        # Represents the constraints for buying the Offer.
        # @!attribute [rw] customer_constraints
        #   @return [::Google::Cloud::Channel::V1::CustomerConstraints]
        #     Represents constraints required to purchase the Offer for a customer.
        class Constraints
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents constraints required to purchase the Offer for a customer.
        # @!attribute [rw] allowed_regions
        #   @return [::Array<::String>]
        #     Allowed geographical regions of the customer.
        # @!attribute [rw] allowed_customer_types
        #   @return [::Array<::Google::Cloud::Channel::V1::CloudIdentityInfo::CustomerType>]
        #     Allowed Customer Type.
        # @!attribute [rw] promotional_order_types
        #   @return [::Array<::Google::Cloud::Channel::V1::PromotionalOrderType>]
        #     Allowed Promotional Order Type. Present for Promotional offers.
        class CustomerConstraints
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The payment plan for the Offer. Describes how to make a payment.
        # @!attribute [rw] payment_plan
        #   @return [::Google::Cloud::Channel::V1::PaymentPlan]
        #     Describes how a reseller will be billed.
        # @!attribute [rw] payment_type
        #   @return [::Google::Cloud::Channel::V1::PaymentType]
        #     Specifies when the payment needs to happen.
        # @!attribute [rw] payment_cycle
        #   @return [::Google::Cloud::Channel::V1::Period]
        #     Describes how frequently the reseller will be billed, such as
        #     once per month.
        # @!attribute [rw] trial_period
        #   @return [::Google::Cloud::Channel::V1::Period]
        #     Present for Offers with a trial period.
        #     For trial-only Offers, a paid service needs to start before the trial
        #     period ends for continued service.
        #     For Regular Offers with a trial period, the regular pricing goes into
        #     effect when trial period ends, or if paid service is started before the end
        #     of the trial period.
        # @!attribute [rw] billing_account
        #   @return [::String]
        #     Reseller Billing account to charge after an offer transaction.
        #     Only present for Google Cloud offers.
        class Plan
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents price by resource type.
        # @!attribute [rw] resource_type
        #   @return [::Google::Cloud::Channel::V1::ResourceType]
        #     Resource Type. Example: SEAT
        # @!attribute [rw] price
        #   @return [::Google::Cloud::Channel::V1::Price]
        #     Price of the Offer. Present if there are no price phases.
        # @!attribute [rw] price_phases
        #   @return [::Array<::Google::Cloud::Channel::V1::PricePhase>]
        #     Specifies the price by time range.
        class PriceByResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the price of the Offer.
        # @!attribute [rw] base_price
        #   @return [::Google::Type::Money]
        #     Base price.
        # @!attribute [rw] discount
        #   @return [::Float]
        #     Discount percentage, represented as decimal.
        #     For example, a 20% discount will be represent as 0.2.
        # @!attribute [rw] effective_price
        #   @return [::Google::Type::Money]
        #     Effective Price after applying the discounts.
        # @!attribute [rw] external_price_uri
        #   @return [::String]
        #     Link to external price list, such as link to Google Voice rate card.
        class Price
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies the price by the duration of months.
        # For example, a 20% discount for the first six months, then a 10% discount
        # starting on the seventh month.
        # @!attribute [rw] period_type
        #   @return [::Google::Cloud::Channel::V1::PeriodType]
        #     Defines the phase period type.
        # @!attribute [rw] first_period
        #   @return [::Integer]
        #     Defines first period for the phase.
        # @!attribute [rw] last_period
        #   @return [::Integer]
        #     Defines first period for the phase.
        # @!attribute [rw] price
        #   @return [::Google::Cloud::Channel::V1::Price]
        #     Price of the phase. Present if there are no price tiers.
        # @!attribute [rw] price_tiers
        #   @return [::Array<::Google::Cloud::Channel::V1::PriceTier>]
        #     Price by the resource tiers.
        class PricePhase
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defines price at resource tier level.
        # For example, an offer with following definition :
        #
        # * Tier 1: Provide 25% discount for all seats between 1 and 25.
        # * Tier 2: Provide 10% discount for all seats between 26 and 100.
        # * Tier 3: Provide flat 15% discount for all seats above 100.
        #
        # Each of these tiers is represented as a PriceTier.
        # @!attribute [rw] first_resource
        #   @return [::Integer]
        #     First resource for which the tier price applies.
        # @!attribute [rw] last_resource
        #   @return [::Integer]
        #     Last resource for which the tier price applies.
        # @!attribute [rw] price
        #   @return [::Google::Cloud::Channel::V1::Price]
        #     Price of the tier.
        class PriceTier
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents period in days/months/years.
        # @!attribute [rw] duration
        #   @return [::Integer]
        #     Total duration of Period Type defined.
        # @!attribute [rw] period_type
        #   @return [::Google::Cloud::Channel::V1::PeriodType]
        #     Period Type.
        class Period
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Constraints type for Promotional offers.
        module PromotionalOrderType
          # Not used.
          PROMOTIONAL_TYPE_UNSPECIFIED = 0

          # Order used for new customers, trial conversions and upgrades.
          NEW_UPGRADE = 1

          # All orders for transferring an existing customer.
          TRANSFER = 2

          # Orders for modifying an existing customer's promotion on the same SKU.
          PROMOTION_SWITCH = 3
        end

        # Describes how the reseller will be billed.
        module PaymentPlan
          # Not used.
          PAYMENT_PLAN_UNSPECIFIED = 0

          # Commitment.
          COMMITMENT = 1

          # No commitment.
          FLEXIBLE = 2

          # Free.
          FREE = 3

          # Trial.
          TRIAL = 4

          # Price and ordering not available through API.
          OFFLINE = 5
        end

        # Specifies when the payment needs to happen.
        module PaymentType
          # Not used.
          PAYMENT_TYPE_UNSPECIFIED = 0

          # Prepay. Amount has to be paid before service is rendered.
          PREPAY = 1

          # Postpay. Reseller is charged at the end of the Payment cycle.
          POSTPAY = 2
        end

        # Represents the type for a monetizable resource(any entity on which billing
        # happens). For example, this could be MINUTES for Google Voice and GB for
        # Google Drive. One SKU can map to multiple monetizable resources.
        module ResourceType
          # Not used.
          RESOURCE_TYPE_UNSPECIFIED = 0

          # Seat.
          SEAT = 1

          # Monthly active user.
          MAU = 2

          # GB (used for storage SKUs).
          GB = 3

          # Active licensed users(for Voice SKUs).
          LICENSED_USER = 4

          # Voice usage.
          MINUTES = 5

          # For IaaS SKUs like Google Cloud, monetization is based on usage accrued on
          # your billing account irrespective of the type of monetizable resource. This
          # enum represents an aggregated resource/container for all usage SKUs on a
          # billing account. Currently, only applicable to Google Cloud.
          IAAS_USAGE = 6

          # For Google Cloud subscriptions like Anthos or SAP.
          SUBSCRIPTION = 7
        end

        # Period Type.
        module PeriodType
          # Not used.
          PERIOD_TYPE_UNSPECIFIED = 0

          # Day.
          DAY = 1

          # Month.
          MONTH = 2

          # Year.
          YEAR = 3
        end
      end
    end
  end
end

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/cx/v3/entity_type.proto for package 'Google.Cloud.Dialogflow.CX.V3'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/cx/v3/entity_type_pb'

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module EntityTypes
            # Service for managing [EntityTypes][google.cloud.dialogflow.cx.v3.EntityType].
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.dialogflow.cx.v3.EntityTypes'

              # Retrieves the specified entity type.
              rpc :GetEntityType, ::Google::Cloud::Dialogflow::CX::V3::GetEntityTypeRequest, ::Google::Cloud::Dialogflow::CX::V3::EntityType
              # Creates an entity type in the specified agent.
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :CreateEntityType, ::Google::Cloud::Dialogflow::CX::V3::CreateEntityTypeRequest, ::Google::Cloud::Dialogflow::CX::V3::EntityType
              # Updates the specified entity type.
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :UpdateEntityType, ::Google::Cloud::Dialogflow::CX::V3::UpdateEntityTypeRequest, ::Google::Cloud::Dialogflow::CX::V3::EntityType
              # Deletes the specified entity type.
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :DeleteEntityType, ::Google::Cloud::Dialogflow::CX::V3::DeleteEntityTypeRequest, ::Google::Protobuf::Empty
              # Returns the list of all entity types in the specified agent.
              rpc :ListEntityTypes, ::Google::Cloud::Dialogflow::CX::V3::ListEntityTypesRequest, ::Google::Cloud::Dialogflow::CX::V3::ListEntityTypesResponse
              # Exports the selected entity types.
              rpc :ExportEntityTypes, ::Google::Cloud::Dialogflow::CX::V3::ExportEntityTypesRequest, ::Google::Longrunning::Operation
              # Imports the specified entitytypes into the agent.
              rpc :ImportEntityTypes, ::Google::Cloud::Dialogflow::CX::V3::ImportEntityTypesRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end

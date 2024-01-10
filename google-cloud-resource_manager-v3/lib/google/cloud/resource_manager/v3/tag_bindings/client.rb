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

require "google/cloud/errors"
require "google/cloud/resourcemanager/v3/tag_bindings_pb"

module Google
  module Cloud
    module ResourceManager
      module V3
        module TagBindings
          ##
          # Client for the TagBindings service.
          #
          # Allow users to create and manage TagBindings between TagValues and
          # different Google Cloud resources throughout the GCP resource hierarchy.
          #
          class Client
            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "cloudresourcemanager.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :tag_bindings_stub

            ##
            # Configure the TagBindings Client class.
            #
            # See {::Google::Cloud::ResourceManager::V3::TagBindings::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all TagBindings clients
            #   ::Google::Cloud::ResourceManager::V3::TagBindings::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "ResourceManager", "V3"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.list_tag_bindings.timeout = 60.0
                default_config.rpcs.list_tag_bindings.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.create_tag_binding.timeout = 60.0

                default_config.rpcs.delete_tag_binding.timeout = 60.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the TagBindings Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::ResourceManager::V3::TagBindings::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # The effective universe domain
            #
            # @return [String]
            #
            def universe_domain
              @tag_bindings_stub.universe_domain
            end

            ##
            # Create a new TagBindings client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::ResourceManager::V3::TagBindings::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::ResourceManager::V3::TagBindings::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the TagBindings client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/resourcemanager/v3/tag_bindings_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint.nil? ||
                                       (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-"))
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
                config.universe_domain = @config.universe_domain
              end

              @tag_bindings_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::ResourceManager::V3::TagBindings::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::ResourceManager::V3::TagBindings::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Lists the TagBindings for the given Google Cloud resource, as specified
            # with `parent`.
            #
            # NOTE: The `parent` field is expected to be a full resource name:
            # https://cloud.google.com/apis/design/resource_names#full_resource_name
            #
            # @overload list_tag_bindings(request, options = nil)
            #   Pass arguments to `list_tag_bindings` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::ListTagBindingsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::ListTagBindingsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_tag_bindings(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_tag_bindings` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The full resource name of a resource for which you want to list
            #     existing TagBindings. E.g.
            #     "//cloudresourcemanager.googleapis.com/projects/123"
            #   @param page_size [::Integer]
            #     Optional. The maximum number of TagBindings to return in the response. The
            #     server allows a maximum of 300 TagBindings to return. If unspecified, the
            #     server will use 100 as the default.
            #   @param page_token [::String]
            #     Optional. A pagination token returned from a previous call to
            #     `ListTagBindings` that indicates where this listing should continue from.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::TagBinding>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::TagBinding>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_manager/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceManager::V3::TagBindings::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceManager::V3::ListTagBindingsRequest.new
            #
            #   # Call the list_tag_bindings method.
            #   result = client.list_tag_bindings request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::ResourceManager::V3::TagBinding.
            #     p item
            #   end
            #
            def list_tag_bindings request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::ListTagBindingsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_tag_bindings.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.list_tag_bindings.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_tag_bindings.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @tag_bindings_stub.call_rpc :list_tag_bindings, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @tag_bindings_stub, :list_tag_bindings, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Creates a TagBinding between a TagValue and a Google Cloud resource.
            #
            # @overload create_tag_binding(request, options = nil)
            #   Pass arguments to `create_tag_binding` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::CreateTagBindingRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::CreateTagBindingRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_tag_binding(tag_binding: nil, validate_only: nil)
            #   Pass arguments to `create_tag_binding` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param tag_binding [::Google::Cloud::ResourceManager::V3::TagBinding, ::Hash]
            #     Required. The TagBinding to be created.
            #   @param validate_only [::Boolean]
            #     Optional. Set to true to perform the validations necessary for creating the
            #     resource, but not actually perform the action.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_manager/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceManager::V3::TagBindings::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceManager::V3::CreateTagBindingRequest.new
            #
            #   # Call the create_tag_binding method.
            #   result = client.create_tag_binding request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def create_tag_binding request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::CreateTagBindingRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_tag_binding.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.create_tag_binding.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_tag_binding.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @tag_bindings_stub.call_rpc :create_tag_binding, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes a TagBinding.
            #
            # @overload delete_tag_binding(request, options = nil)
            #   Pass arguments to `delete_tag_binding` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::DeleteTagBindingRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::DeleteTagBindingRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_tag_binding(name: nil)
            #   Pass arguments to `delete_tag_binding` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the TagBinding. This is a String of the form:
            #     `tagBindings/{id}` (e.g.
            #     `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_manager/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceManager::V3::TagBindings::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceManager::V3::DeleteTagBindingRequest.new
            #
            #   # Call the delete_tag_binding method.
            #   result = client.delete_tag_binding request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def delete_tag_binding request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::DeleteTagBindingRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_tag_binding.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_tag_binding.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_tag_binding.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @tag_bindings_stub.call_rpc :delete_tag_binding, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Return a list of effective tags for the given Google Cloud resource, as
            # specified in `parent`.
            #
            # @overload list_effective_tags(request, options = nil)
            #   Pass arguments to `list_effective_tags` via a request object, either of type
            #   {::Google::Cloud::ResourceManager::V3::ListEffectiveTagsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceManager::V3::ListEffectiveTagsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_effective_tags(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_effective_tags` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The full resource name of a resource for which you want to list
            #     the effective tags. E.g.
            #     "//cloudresourcemanager.googleapis.com/projects/123"
            #   @param page_size [::Integer]
            #     Optional. The maximum number of effective tags to return in the response.
            #     The server allows a maximum of 300 effective tags to return in a single
            #     page. If unspecified, the server will use 100 as the default.
            #   @param page_token [::String]
            #     Optional. A pagination token returned from a previous call to
            #     `ListEffectiveTags` that indicates from where this listing should continue.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::EffectiveTag>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ResourceManager::V3::EffectiveTag>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_manager/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceManager::V3::TagBindings::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceManager::V3::ListEffectiveTagsRequest.new
            #
            #   # Call the list_effective_tags method.
            #   result = client.list_effective_tags request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::ResourceManager::V3::EffectiveTag.
            #     p item
            #   end
            #
            def list_effective_tags request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceManager::V3::ListEffectiveTagsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_effective_tags.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceManager::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.list_effective_tags.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_effective_tags.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @tag_bindings_stub.call_rpc :list_effective_tags, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @tag_bindings_stub, :list_effective_tags, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the TagBindings API.
            #
            # This class represents the configuration for TagBindings,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::ResourceManager::V3::TagBindings::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_tag_bindings to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::ResourceManager::V3::TagBindings::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_tag_bindings.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::ResourceManager::V3::TagBindings::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_tag_bindings.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   A custom service endpoint, as a hostname or hostname:port. The default is
            #   nil, indicating to use the default endpoint in the current universe domain.
            #   @return [::String,nil]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            # @!attribute [rw] universe_domain
            #   The universe domain within which to make requests. This determines the
            #   default endpoint URL. The default value of nil uses the environment
            #   universe (usually the default "googleapis.com" universe).
            #   @return [::String,nil]
            #
            class Configuration
              extend ::Gapic::Config

              # @private
              # The endpoint specific to the default "googleapis.com" universe. Deprecated.
              DEFAULT_ENDPOINT = "cloudresourcemanager.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil
              config_attr :universe_domain, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the TagBindings API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_tag_bindings`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_tag_bindings
                ##
                # RPC-specific configuration for `create_tag_binding`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_tag_binding
                ##
                # RPC-specific configuration for `delete_tag_binding`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_tag_binding
                ##
                # RPC-specific configuration for `list_effective_tags`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_effective_tags

                # @private
                def initialize parent_rpcs = nil
                  list_tag_bindings_config = parent_rpcs.list_tag_bindings if parent_rpcs.respond_to? :list_tag_bindings
                  @list_tag_bindings = ::Gapic::Config::Method.new list_tag_bindings_config
                  create_tag_binding_config = parent_rpcs.create_tag_binding if parent_rpcs.respond_to? :create_tag_binding
                  @create_tag_binding = ::Gapic::Config::Method.new create_tag_binding_config
                  delete_tag_binding_config = parent_rpcs.delete_tag_binding if parent_rpcs.respond_to? :delete_tag_binding
                  @delete_tag_binding = ::Gapic::Config::Method.new delete_tag_binding_config
                  list_effective_tags_config = parent_rpcs.list_effective_tags if parent_rpcs.respond_to? :list_effective_tags
                  @list_effective_tags = ::Gapic::Config::Method.new list_effective_tags_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end

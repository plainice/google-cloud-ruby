# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "google/appengine/v1/appengine_pb"
require "google/cloud/app_engine/v1/instances/rest/service_stub"

module Google
  module Cloud
    module AppEngine
      module V1
        module Instances
          module Rest
            ##
            # REST client for the Instances service.
            #
            # Manages instances of a version.
            #
            class Client
              # @private
              attr_reader :instances_stub

              ##
              # Configure the Instances Client class.
              #
              # See {::Google::Cloud::AppEngine::V1::Instances::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Instances clients
              #   ::Google::Cloud::AppEngine::V1::Instances::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "AppEngine", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Instances Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::AppEngine::V1::Instances::Rest::Client::Configuration}
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
              # Create a new Instances REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::AppEngine::V1::Instances::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::AppEngine::V1::Instances::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Instances client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::AppEngine::V1::Instances::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @instances_stub = ::Google::Cloud::AppEngine::V1::Instances::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::AppEngine::V1::Instances::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Lists the instances of a version.
              #
              # Tip: To aggregate details about instances over time, see the
              # [Stackdriver Monitoring API](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).
              #
              # @overload list_instances(request, options = nil)
              #   Pass arguments to `list_instances` via a request object, either of type
              #   {::Google::Cloud::AppEngine::V1::ListInstancesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AppEngine::V1::ListInstancesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_instances(parent: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `list_instances` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Name of the parent Version resource. Example:
              #     `apps/myapp/services/default/versions/v1`.
              #   @param page_size [::Integer]
              #     Maximum results to return per page.
              #   @param page_token [::String]
              #     Continuation token for fetching the next page of results.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::AppEngine::V1::Instance>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::AppEngine::V1::Instance>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_instances request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::ListInstancesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_instances.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AppEngine::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_instances.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_instances.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @instances_stub.list_instances request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @instances_stub, :list_instances, "instances", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets instance information.
              #
              # @overload get_instance(request, options = nil)
              #   Pass arguments to `get_instance` via a request object, either of type
              #   {::Google::Cloud::AppEngine::V1::GetInstanceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AppEngine::V1::GetInstanceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_instance(name: nil)
              #   Pass arguments to `get_instance` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Name of the resource requested. Example:
              #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AppEngine::V1::Instance]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AppEngine::V1::Instance]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_instance request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::GetInstanceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_instance.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AppEngine::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_instance.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_instance.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @instances_stub.get_instance request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Stops a running instance.
              #
              # The instance might be automatically recreated based on the scaling settings
              # of the version. For more information, see "How Instances are Managed"
              # ([standard environment](https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed) |
              # [flexible environment](https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).
              #
              # To ensure that instances are not re-created and avoid getting billed, you
              # can stop all instances within the target version by changing the serving
              # status of the version to `STOPPED` with the
              # [`apps.services.versions.patch`](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch)
              # method.
              #
              # @overload delete_instance(request, options = nil)
              #   Pass arguments to `delete_instance` via a request object, either of type
              #   {::Google::Cloud::AppEngine::V1::DeleteInstanceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AppEngine::V1::DeleteInstanceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_instance(name: nil)
              #   Pass arguments to `delete_instance` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Name of the resource requested. Example:
              #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_instance request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::DeleteInstanceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_instance.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AppEngine::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_instance.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_instance.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @instances_stub.delete_instance request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Enables debugging on a VM instance. This allows you to use the SSH
              # command to connect to the virtual machine where the instance lives.
              # While in "debug mode", the instance continues to serve live traffic.
              # You should delete the instance when you are done debugging and then
              # allow the system to take over and determine if another instance
              # should be started.
              #
              # Only applicable for instances in App Engine flexible environment.
              #
              # @overload debug_instance(request, options = nil)
              #   Pass arguments to `debug_instance` via a request object, either of type
              #   {::Google::Cloud::AppEngine::V1::DebugInstanceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AppEngine::V1::DebugInstanceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload debug_instance(name: nil, ssh_key: nil)
              #   Pass arguments to `debug_instance` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Name of the resource requested. Example:
              #     `apps/myapp/services/default/versions/v1/instances/instance-1`.
              #   @param ssh_key [::String]
              #     Public SSH key to add to the instance. Examples:
              #
              #     * `[USERNAME]:ssh-rsa [KEY_VALUE] [USERNAME]`
              #     * `[USERNAME]:ssh-rsa [KEY_VALUE] google-ssh {"userName":"[USERNAME]","expireOn":"[EXPIRE_TIME]"}`
              #
              #     For more information, see
              #     [Adding and Removing SSH Keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys).
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def debug_instance request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::DebugInstanceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.debug_instance.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AppEngine::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.debug_instance.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.debug_instance.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @instances_stub.debug_instance request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Instances REST API.
              #
              # This class represents the configuration for Instances REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::AppEngine::V1::Instances::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_instances to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::AppEngine::V1::Instances::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_instances.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::AppEngine::V1::Instances::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_instances.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"appengine.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
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
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
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
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "appengine.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

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
                # Configuration RPC class for the Instances API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
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
                  # RPC-specific configuration for `list_instances`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_instances
                  ##
                  # RPC-specific configuration for `get_instance`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_instance
                  ##
                  # RPC-specific configuration for `delete_instance`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_instance
                  ##
                  # RPC-specific configuration for `debug_instance`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :debug_instance

                  # @private
                  def initialize parent_rpcs = nil
                    list_instances_config = parent_rpcs.list_instances if parent_rpcs.respond_to? :list_instances
                    @list_instances = ::Gapic::Config::Method.new list_instances_config
                    get_instance_config = parent_rpcs.get_instance if parent_rpcs.respond_to? :get_instance
                    @get_instance = ::Gapic::Config::Method.new get_instance_config
                    delete_instance_config = parent_rpcs.delete_instance if parent_rpcs.respond_to? :delete_instance
                    @delete_instance = ::Gapic::Config::Method.new delete_instance_config
                    debug_instance_config = parent_rpcs.debug_instance if parent_rpcs.respond_to? :debug_instance
                    @debug_instance = ::Gapic::Config::Method.new debug_instance_config

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
end

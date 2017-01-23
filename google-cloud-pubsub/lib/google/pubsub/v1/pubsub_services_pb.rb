# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/pubsub/v1/pubsub.proto for package 'google.pubsub.v1'
# Original file comments:
# Copyright 2016 Google Inc.
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
require 'google/pubsub/v1/pubsub_pb'

module Google
  module Pubsub
    module V1
      module Subscriber
        # The service that an application uses to manipulate subscriptions and to
        # consume messages from a subscription via the `Pull` method.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.pubsub.v1.Subscriber'

          # Creates a subscription to a given topic.
          # If the subscription already exists, returns `ALREADY_EXISTS`.
          # If the corresponding topic doesn't exist, returns `NOT_FOUND`.
          #
          # If the name is not provided in the request, the server will assign a random
          # name for this subscription on the same project as the topic, conforming
          # to the
          # [resource name format](https://cloud.google.com/pubsub/docs/overview#names).
          # The generated name is populated in the returned Subscription object.
          # Note that for REST API requests, you must specify a name in the request.
          rpc :CreateSubscription, Subscription, Subscription
          # Gets the configuration details of a subscription.
          rpc :GetSubscription, GetSubscriptionRequest, Subscription
          # Lists matching subscriptions.
          rpc :ListSubscriptions, ListSubscriptionsRequest, ListSubscriptionsResponse
          # Deletes an existing subscription. All messages retained in the subscription
          # are immediately dropped. Calls to `Pull` after deletion will return
          # `NOT_FOUND`. After a subscription is deleted, a new one may be created with
          # the same name, but the new one has no association with the old
          # subscription or its topic unless the same topic is specified.
          rpc :DeleteSubscription, DeleteSubscriptionRequest, Google::Protobuf::Empty
          # Modifies the ack deadline for a specific message. This method is useful
          # to indicate that more time is needed to process a message by the
          # subscriber, or to make the message available for redelivery if the
          # processing was interrupted. Note that this does not modify the
          # subscription-level `ackDeadlineSeconds` used for subsequent messages.
          rpc :ModifyAckDeadline, ModifyAckDeadlineRequest, Google::Protobuf::Empty
          # Acknowledges the messages associated with the `ack_ids` in the
          # `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages
          # from the subscription.
          #
          # Acknowledging a message whose ack deadline has expired may succeed,
          # but such a message may be redelivered later. Acknowledging a message more
          # than once will not result in an error.
          rpc :Acknowledge, AcknowledgeRequest, Google::Protobuf::Empty
          # Pulls messages from the server. Returns an empty list if there are no
          # messages available in the backlog. The server may return `UNAVAILABLE` if
          # there are too many concurrent pull requests pending for the given
          # subscription.
          rpc :Pull, PullRequest, PullResponse
          # (EXPERIMENTAL) StreamingPull is an experimental feature. This RPC will
          # respond with UNIMPLEMENTED errors unless you have been invited to test
          # this feature. Contact cloud-pubsub@google.com with any questions.
          #
          # Establishes a stream with the server, which sends messages down to the
          # client. The client streams acknowledgements and ack deadline modifications
          # back to the server. The server will close the stream and return the status
          # on any error. The server may close the stream with status `OK` to reassign
          # server-side resources, in which case, the client should re-establish the
          # stream. `UNAVAILABLE` may also be returned in the case of a transient error
          # (e.g., a server restart). These should also be retried by the client. Flow
          # control can be achieved by configuring the underlying RPC channel.
          rpc :StreamingPull, stream(StreamingPullRequest), stream(StreamingPullResponse)
          # Modifies the `PushConfig` for a specified subscription.
          #
          # This may be used to change a push subscription to a pull one (signified by
          # an empty `PushConfig`) or vice versa, or change the endpoint URL and other
          # attributes of a push subscription. Messages will accumulate for delivery
          # continuously through the call regardless of changes to the `PushConfig`.
          rpc :ModifyPushConfig, ModifyPushConfigRequest, Google::Protobuf::Empty
        end

        Stub = Service.rpc_stub_class
      end
      module Publisher
        # The service that an application uses to manipulate topics, and to send
        # messages to a topic.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.pubsub.v1.Publisher'

          # Creates the given topic with the given name.
          rpc :CreateTopic, Topic, Topic
          # Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic
          # does not exist. The message payload must not be empty; it must contain
          #  either a non-empty data field, or at least one attribute.
          rpc :Publish, PublishRequest, PublishResponse
          # Gets the configuration of a topic.
          rpc :GetTopic, GetTopicRequest, Topic
          # Lists matching topics.
          rpc :ListTopics, ListTopicsRequest, ListTopicsResponse
          # Lists the name of the subscriptions for this topic.
          rpc :ListTopicSubscriptions, ListTopicSubscriptionsRequest, ListTopicSubscriptionsResponse
          # Deletes the topic with the given name. Returns `NOT_FOUND` if the topic
          # does not exist. After a topic is deleted, a new topic may be created with
          # the same name; this is an entirely new topic with none of the old
          # configuration or subscriptions. Existing subscriptions to this topic are
          # not deleted, but their `topic` field is set to `_deleted-topic_`.
          rpc :DeleteTopic, DeleteTopicRequest, Google::Protobuf::Empty
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end

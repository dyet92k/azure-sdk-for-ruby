# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
module Api_2016_04_02
  module Models
    #
    # CDN endpoint is the entity within a CDN profile containing configuration
    # information regarding caching behaviors and origins. The CDN endpoint is
    # exposed using the URL format <endpointname>.azureedge.net by default, but
    # custom domains can also be created.
    #
    class Endpoint < TrackedResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The host name of the endpoint {endpointName}.{DNSZone}
      attr_accessor :host_name

      # @return [String] The host header the CDN provider will send along with
      # content requests to origins. The default value is the host name of the
      # origin.
      attr_accessor :origin_host_header

      # @return [String] The path used for origin requests.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression will
      # be applied. The value for the elements should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether the compression is enabled. Default
      # value is false. If compression is enabled, the content transferred from
      # cdn endpoint to end user will be compressed. The requested content must
      # be larger than 1 byte and smaller than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether https traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines the query string caching
      # behavior. Possible values include: 'IgnoreQueryString',
      # 'BypassCaching', 'UseQueryString', 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [Array<DeepCreatedOrigin>] The set of origins for the CDN
      # endpoint. When multiple origins exist, the first origin will be used as
      # primary and rest will be used as failover options.
      attr_accessor :origins

      # @return [EndpointResourceState] Resource status of the endpoint.
      # Possible values include: 'Creating', 'Deleting', 'Running', 'Starting',
      # 'Stopped', 'Stopping'
      attr_accessor :resource_state

      # @return [ProvisioningState] Provisioning status of the endpoint.
      # Possible values include: 'Creating', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for Endpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Endpoint',
          type: {
            name: 'Composite',
            class_name: 'Endpoint',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              host_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              origin_host_header: {
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              origin_path: {
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_compression_enabled: {
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              origins: {
                required: false,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DeepCreatedOriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOrigin'
                      }
                  }
                }
              },
              resource_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'Enum',
                  module: 'EndpointResourceState'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              }
            }
          }
        }
      end
    end
  end
end
end

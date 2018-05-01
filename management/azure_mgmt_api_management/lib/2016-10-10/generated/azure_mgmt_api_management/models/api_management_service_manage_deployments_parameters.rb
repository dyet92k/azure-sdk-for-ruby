# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Parameters supplied to the ManageDeployments operation.
    #
    class ApiManagementServiceManageDeploymentsParameters

      include MsRestAzure

      # @return [String] Location of the API Management service Azure data
      # center.
      attr_accessor :location

      # @return [SkuType] SKU type of the API Management service. Possible
      # values include: 'Developer', 'Standard', 'Premium'
      attr_accessor :sku_type

      # @return [Integer] SKU Unit count of the API Management service. Default
      # value is 1. Default value: 1 .
      attr_accessor :sku_unit_count

      # @return [Array<AdditionalRegion>] Additional data center locations for
      # the API Management service.
      attr_accessor :additional_locations

      # @return [VirtualNetworkConfiguration] Virtual network configuration.
      attr_accessor :vpn_configuration

      # @return [VirtualNetworkType] The type of VPN in which API Managemet
      # service needs to be configured in. None (Default Value) means the API
      # Management service is not part of any Virtual Network, External means
      # the API Management deployment is set up inside a Virtual Network having
      # an Internet Facing Endpoint, and Internal means that the API Management
      # service deployment is set up inside a Virtual Network having an
      # Intranet Facing Endpoint only. When vpnConfiguration is specified,
      # vpnType must be specified. Possible values include: 'None', 'External',
      # 'Internal'. Default value: 'None' .
      attr_accessor :vpn_type


      #
      # Mapper for ApiManagementServiceManageDeploymentsParameters class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceManageDeploymentsParameters',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceManageDeploymentsParameters',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'skuType',
                type: {
                  name: 'Enum',
                  module: 'SkuType'
                }
              },
              sku_unit_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skuUnitCount',
                default_value: 1,
                type: {
                  name: 'Number'
                }
              },
              additional_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalRegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalRegion'
                      }
                  }
                }
              },
              vpn_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              vpn_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnType',
                default_value: 'None',
                type: {
                  name: 'Enum',
                  module: 'VirtualNetworkType'
                }
              }
            }
          }
        }
      end
    end
  end
end
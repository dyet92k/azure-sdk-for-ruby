# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019_04_01
  module Models
    #
    # Virtual network model
    #
    class VirtualNetwork

      include MsRestAzure

      # @return [Boolean] can be used in vm creation/deletion
      attr_accessor :assignable

      # @return [String] virtual network id (privateCloudId:vsphereId)
      attr_accessor :id

      # @return [String] Azure region
      attr_accessor :location

      # @return [String] {VirtualNetworkName}
      attr_accessor :name

      # @return [String] The Private Cloud id
      attr_accessor :private_cloud_id

      # @return [String] {resourceProviderNamespace}/{resourceType}
      attr_accessor :type


      #
      # Mapper for VirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetwork',
            model_properties: {
              assignable: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'assignable',
                type: {
                  name: 'Boolean'
                }
              },
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              private_cloud_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateCloudId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
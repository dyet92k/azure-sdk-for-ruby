# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_04_01
  module Models
    #
    # Application Gateway autoscale bounds on number of Application Gateway
    # instance.
    #
    class ApplicationGatewayAutoscaleBounds

      include MsRestAzure

      # @return [Integer] Lower bound on number of Application Gateway
      # instances.
      attr_accessor :min

      # @return [Integer] Upper bound on number of Application Gateway
      # instances.
      attr_accessor :max


      #
      # Mapper for ApplicationGatewayAutoscaleBounds class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayAutoscaleBounds',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayAutoscaleBounds',
            model_properties: {
              min: {
                client_side_validation: true,
                required: true,
                serialized_name: 'min',
                type: {
                  name: 'Number'
                }
              },
              max: {
                client_side_validation: true,
                required: true,
                serialized_name: 'max',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

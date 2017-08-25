# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2016_03_30
  module Models
    #
    # The response from the List Container Services operation.
    #
    class ContainerServiceListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ContainerService>] the list of container services.
      attr_accessor :value


      #
      # Mapper for ContainerServiceListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceListResult',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ContainerServiceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerService'
                      }
                  }
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

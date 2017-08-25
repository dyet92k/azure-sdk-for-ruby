# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
module Api_2016_04_02
  module Models
    #
    # Model object.
    #
    #
    class EndpointListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Endpoint>] List of CDN endpoints within a profile
      attr_accessor :value


      #
      # Mapper for EndpointListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EndpointListResult',
          type: {
            name: 'Composite',
            class_name: 'EndpointListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Endpoint'
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

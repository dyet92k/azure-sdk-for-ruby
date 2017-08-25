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
    class OriginListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Origin>] List of CDN origins within an endpoint
      attr_accessor :value


      #
      # Mapper for OriginListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OriginListResult',
          type: {
            name: 'Composite',
            class_name: 'OriginListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Origin'
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2017_03_30
  module Models
    #
    # Describes metadata for retrieving price info.
    #
    class ResourceSkuCosts

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Used for querying price from commerce.
      attr_accessor :meter_id

      # @return [Integer] The multiplier is needed to extend the base metered
      # cost.
      attr_accessor :quantity

      # @return [String] An invariant to show the extended unit.
      attr_accessor :extended_unit


      #
      # Mapper for ResourceSkuCosts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSkuCosts',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuCosts',
            model_properties: {
              meter_id: {
                required: false,
                read_only: true,
                serialized_name: 'meterID',
                type: {
                  name: 'String'
                }
              },
              quantity: {
                required: false,
                read_only: true,
                serialized_name: 'quantity',
                type: {
                  name: 'Number'
                }
              },
              extended_unit: {
                required: false,
                read_only: true,
                serialized_name: 'extendedUnit',
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
end

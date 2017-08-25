# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2017_03_30
  module Models
    #
    # Describes scaling information of a SKU.
    #
    class ResourceSkuCapacity

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The minimum capacity.
      attr_accessor :minimum

      # @return [Integer] The maximum capacity that can be set.
      attr_accessor :maximum

      # @return [Integer] The default capacity.
      attr_accessor :default

      # @return [ResourceSkuCapacityScaleType] The scale type applicable to the
      # sku. Possible values include: 'Automatic', 'Manual', 'None'
      attr_accessor :scale_type


      #
      # Mapper for ResourceSkuCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSkuCapacity',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuCapacity',
            model_properties: {
              minimum: {
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                required: false,
                read_only: true,
                serialized_name: 'default',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                required: false,
                read_only: true,
                serialized_name: 'scaleType',
                type: {
                  name: 'Enum',
                  module: 'ResourceSkuCapacityScaleType'
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

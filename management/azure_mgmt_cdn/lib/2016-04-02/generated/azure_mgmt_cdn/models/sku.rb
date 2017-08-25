# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
module Api_2016_04_02
  module Models
    #
    # The SKU (pricing tier) of the CDN profile.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [SkuName] Name of the pricing tier. Possible values include:
      # 'Standard_Verizon', 'Premium_Verizon', 'Custom_Verizon',
      # 'Standard_Akamai'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'SkuName'
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2016_04_30_preview
  module Models
    #
    # Plan for the resource.
    #
    class Plan

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The plan ID.
      attr_accessor :name

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The offer ID.
      attr_accessor :product

      # @return [String] The promotion code.
      attr_accessor :promotion_code


      #
      # Mapper for Plan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Plan',
          type: {
            name: 'Composite',
            class_name: 'Plan',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: false,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                required: false,
                serialized_name: 'promotionCode',
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

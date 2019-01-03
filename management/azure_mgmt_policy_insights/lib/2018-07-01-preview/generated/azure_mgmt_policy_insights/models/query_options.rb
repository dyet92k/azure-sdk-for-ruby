# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_07_01_preview
  module Models
    #
    # Additional parameters for a set of operations.
    #
    class QueryOptions

      include MsRestAzure

      # @return [Integer] Maximum number of records to return.
      attr_accessor :top

      # @return [String] OData filter expression.
      attr_accessor :filter


      #
      # Mapper for QueryOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          type: {
            name: 'Composite',
            class_name: 'QueryOptions',
            model_properties: {
              top: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Number'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
module Api_2015_07_01
  module Models
    #
    # Resource Type
    #
    class ResourceType

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource type name.
      attr_accessor :name

      # @return [String] The resource type display name.
      attr_accessor :display_name

      # @return [Array<ProviderOperation>] The resource type operations.
      attr_accessor :operations


      #
      # Mapper for ResourceType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceType',
          type: {
            name: 'Composite',
            class_name: 'ResourceType',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              operations: {
                required: false,
                serialized_name: 'operations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProviderOperationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProviderOperation'
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

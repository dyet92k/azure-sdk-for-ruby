# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Response for list effective network security groups api service call
    #
    class EffectiveNetworkSecurityGroupListResult

      include MsRestAzure

      # @return [Array<EffectiveNetworkSecurityGroup>] Gets list of effective
      # network security groups
      attr_accessor :value

      # @return [String] Gets the URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for EffectiveNetworkSecurityGroupListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EffectiveNetworkSecurityGroupListResult',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityGroupListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EffectiveNetworkSecurityGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EffectiveNetworkSecurityGroup'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2017_03_30
  module Models
    #
    # The vault id is an Azure Resource Manager Resoure id in the form
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}
    #
    class SourceVault

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource Id
      attr_accessor :id


      #
      # Mapper for SourceVault class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SourceVault',
          type: {
            name: 'Composite',
            class_name: 'SourceVault',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2016_04_30_preview
  module Models
    #
    # Key Vault Secret Url and vault id of the encryption key
    #
    class KeyVaultAndSecretReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [SourceVault] Resource id of the KeyVault containing the key or
      # secret
      attr_accessor :source_vault

      # @return [String] Url pointing to a key or secret in KeyVault
      attr_accessor :secret_url


      #
      # Mapper for KeyVaultAndSecretReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultAndSecretReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultAndSecretReference',
            model_properties: {
              source_vault: {
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SourceVault'
                }
              },
              secret_url: {
                required: true,
                serialized_name: 'secretUrl',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2020_05_01
  module Models
    #
    # Request for account key regeneration
    #
    class AccountKeyRegenerateRequest

      include MsRestAzure

      # @return [Integer] serial of key to be regenerated. Default value: 1 .
      attr_accessor :serial


      #
      # Mapper for AccountKeyRegenerateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccountKeyRegenerateRequest',
          type: {
            name: 'Composite',
            class_name: 'AccountKeyRegenerateRequest',
            model_properties: {
              serial: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serial',
                default_value: 1,
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

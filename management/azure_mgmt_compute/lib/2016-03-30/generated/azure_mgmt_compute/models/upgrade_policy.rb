# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2016_03_30
  module Models
    #
    # Describes an upgrade policy - automatic or manual.
    #
    class UpgradePolicy

      include MsRestAzure

      include MsRest::JSONable
      # @return [UpgradeMode] The upgrade mode. Possible values include:
      # 'Automatic', 'Manual'
      attr_accessor :mode


      #
      # Mapper for UpgradePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpgradePolicy',
          type: {
            name: 'Composite',
            class_name: 'UpgradePolicy',
            model_properties: {
              mode: {
                required: false,
                serialized_name: 'mode',
                type: {
                  name: 'Enum',
                  module: 'UpgradeMode'
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

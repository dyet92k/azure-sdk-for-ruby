# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
module Api_2015_06_01
  module Models
    #
    # Model object.
    #
    #
    class ProfileListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Profile>] List of CDN profiles within a resource group.
      attr_accessor :value


      #
      # Mapper for ProfileListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProfileListResult',
          type: {
            name: 'Composite',
            class_name: 'ProfileListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Profile'
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

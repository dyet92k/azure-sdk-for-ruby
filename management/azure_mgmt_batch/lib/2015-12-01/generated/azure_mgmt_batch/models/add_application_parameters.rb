# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
module Api_2015_12_01
  module Models
    #
    # Parameters for an ApplicationOperations.AddApplication request.
    #
    class AddApplicationParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] A value indicating whether packages within the
      # application may be overwritten using the same version string.
      attr_accessor :allow_updates

      # @return [String] The display name for the application.
      attr_accessor :display_name


      #
      # Mapper for AddApplicationParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AddApplicationParameters',
          type: {
            name: 'Composite',
            class_name: 'AddApplicationParameters',
            model_properties: {
              allow_updates: {
                required: false,
                serialized_name: 'allowUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
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

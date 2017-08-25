# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
module Api_2017_01_01
  module Models
    #
    # Parameters for an ApplicationOperations.ActivateApplicationPackage
    # request.
    #
    class ActivateApplicationPackageParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The format of the application package binary file.
      attr_accessor :format


      #
      # Mapper for ActivateApplicationPackageParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActivateApplicationPackageParameters',
          type: {
            name: 'Composite',
            class_name: 'ActivateApplicationPackageParameters',
            model_properties: {
              format: {
                required: true,
                serialized_name: 'format',
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

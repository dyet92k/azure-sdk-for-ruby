# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The parameters to the list SAS request.
    #
    class ListContainerSasInput

      include MsRestAzure

      # @return [AssetContainerPermission] The permissions to set on the SAS
      # URL. Possible values include: 'Read', 'ReadWrite', 'ReadWriteDelete'
      attr_accessor :permissions

      # @return [DateTime] The SAS URL expiration time.  This must be less than
      # 24 hours from the current time.
      attr_accessor :expiry_time


      #
      # Mapper for ListContainerSasInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListContainerSasInput',
          type: {
            name: 'Composite',
            class_name: 'ListContainerSasInput',
            model_properties: {
              permissions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'permissions',
                type: {
                  name: 'String'
                }
              },
              expiry_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiryTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph::Api_1_6
  module Models
    #
    # Request parameters for creating a new group.
    #
    class GroupCreateParameters

      include MsRestAzure

      # @return [String] Group display name
      attr_accessor :display_name

      # @return [Boolean] Whether the group is mail-enabled. Must be false.
      # This is because only pure security groups can be created using the
      # Graph API. Default value: false .
      attr_accessor :mail_enabled

      # @return [String] Mail nickname
      attr_accessor :mail_nickname

      # @return [Boolean] Whether the group is a security group. Must be true.
      # This is because only pure security groups can be created using the
      # Graph API. Default value: true .
      attr_accessor :security_enabled


      #
      # Mapper for GroupCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GroupCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'GroupCreateParameters',
            model_properties: {
              display_name: {
                required: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              mail_enabled: {
                required: true,
                is_constant: true,
                serialized_name: 'mailEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              mail_nickname: {
                required: true,
                serialized_name: 'mailNickname',
                type: {
                  name: 'String'
                }
              },
              security_enabled: {
                required: true,
                is_constant: true,
                serialized_name: 'securityEnabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
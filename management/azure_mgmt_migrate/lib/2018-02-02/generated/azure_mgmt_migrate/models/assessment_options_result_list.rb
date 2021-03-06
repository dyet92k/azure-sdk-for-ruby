# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # List of assessment options.
    #
    class AssessmentOptionsResultList

      include MsRestAzure

      # @return [Array<VmFamily>] Dictionary of VM families grouped by vm
      # family name describing the targeted azure locations of VM family and
      # the category of the family.
      attr_accessor :vm_families

      # @return [Array<String>] List of supported VM Families.
      attr_accessor :reserved_instance_vm_families


      #
      # Mapper for AssessmentOptionsResultList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AssessmentOptionsResultList',
          type: {
            name: 'Composite',
            class_name: 'AssessmentOptionsResultList',
            model_properties: {
              vm_families: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vmFamilies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VmFamilyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VmFamily'
                      }
                  }
                }
              },
              reserved_instance_vm_families: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reservedInstanceVmFamilies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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

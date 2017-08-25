# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
module Api_2017_03_30
  module Models
    #
    # Describes a virtual machine scale set extension profile.
    #
    class VirtualMachineScaleSetExtensionProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VirtualMachineScaleSetExtension>] The virtual machine
      # scale set child extension resources.
      attr_accessor :extensions


      #
      # Mapper for VirtualMachineScaleSetExtensionProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetExtensionProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetExtensionProfile',
            model_properties: {
              extensions: {
                required: false,
                serialized_name: 'extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetExtension'
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

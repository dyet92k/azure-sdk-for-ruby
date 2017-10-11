# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # This class represents the group task details when parent child
    # relationship exists in the drill down.
    #
    class GroupTaskDetails

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["InlineWorkflowTaskDetails"] = "InlineWorkflowTaskDetails"
      @@discriminatorMap["RecoveryPlanGroupTaskDetails"] = "RecoveryPlanGroupTaskDetails"
      @@discriminatorMap["RecoveryPlanShutdownGroupTaskDetails"] = "RecoveryPlanShutdownGroupTaskDetails"

      def initialize
        @instanceType = "GroupTaskDetails"
      end

      attr_accessor :instanceType

      # @return [Array<ASRTask>] The child tasks.
      attr_accessor :child_tasks


      #
      # Mapper for GroupTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GroupTaskDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'GroupTaskDetails',
            class_name: 'GroupTaskDetails',
            model_properties: {
              child_tasks: {
                required: false,
                serialized_name: 'childTasks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ASRTaskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ASRTask'
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
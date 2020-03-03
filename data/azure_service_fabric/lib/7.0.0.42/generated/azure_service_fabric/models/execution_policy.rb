# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # The execution policy of the service
    #
    class ExecutionPolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["runToCompletion"] = "RunToCompletionExecutionPolicy"

      def initialize
        @type = "ExecutionPolicy"
      end

      attr_accessor :type


      #
      # Mapper for ExecutionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExecutionPolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'ExecutionPolicy',
            class_name: 'ExecutionPolicy',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
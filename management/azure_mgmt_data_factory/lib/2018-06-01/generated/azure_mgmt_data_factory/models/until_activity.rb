# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # This activity executes inner activities until the specified boolean
    # expression results to true or timeout is reached, whichever is earlier.
    #
    class UntilActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "Until"
      end

      attr_accessor :type

      # @return [Expression] An expression that would evaluate to Boolean. The
      # loop will continue until this expression evaluates to true
      attr_accessor :expression

      # @return Specifies the timeout for the activity to run. If there is no
      # value specified, it takes the value of TimeSpan.FromDays(7) which is 1
      # week as default. Type: string (or Expression with resultType string),
      # pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])). Type:
      # string (or Expression with resultType string), pattern:
      # ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :timeout

      # @return [Array<Activity>] List of activities to execute.
      attr_accessor :activities


      #
      # Mapper for UntilActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Until',
          type: {
            name: 'Composite',
            class_name: 'UntilActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              expression: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.expression',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.timeout',
                type: {
                  name: 'Object'
                }
              },
              activities: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.activities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Activity',
                        class_name: 'Activity'
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_01_01
  module Models
    #
    # A export resource.
    #
    class Export < Resource

      include MsRestAzure

      # @return [FormatType] The format of the export being delivered. Possible
      # values include: 'Csv'
      attr_accessor :format

      # @return [ExportDeliveryInfo] Has delivery information for the export.
      attr_accessor :delivery_info

      # @return [QueryDefinition] Has definition for the export.
      attr_accessor :definition

      # @return [ExportSchedule] Has schedule information for the export.
      attr_accessor :schedule


      #
      # Mapper for Export class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Export',
          type: {
            name: 'Composite',
            class_name: 'Export',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.format',
                type: {
                  name: 'String'
                }
              },
              delivery_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.deliveryInfo',
                type: {
                  name: 'Composite',
                  class_name: 'ExportDeliveryInfo'
                }
              },
              definition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.definition',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'QueryDefinition'
                }
              },
              schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.schedule',
                type: {
                  name: 'Composite',
                  class_name: 'ExportSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
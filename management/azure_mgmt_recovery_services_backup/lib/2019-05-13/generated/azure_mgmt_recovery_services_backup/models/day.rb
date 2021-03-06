# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Day of the week.
    #
    class Day

      include MsRestAzure

      # @return [Integer] Date of the month
      attr_accessor :date

      # @return [Boolean] Whether Date is last date of month
      attr_accessor :is_last


      #
      # Mapper for Day class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Day',
          type: {
            name: 'Composite',
            class_name: 'Day',
            model_properties: {
              date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'date',
                type: {
                  name: 'Number'
                }
              },
              is_last: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isLast',
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

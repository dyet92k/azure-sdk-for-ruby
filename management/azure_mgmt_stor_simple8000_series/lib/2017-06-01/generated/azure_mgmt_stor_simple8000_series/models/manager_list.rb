# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The list of StorSimple Managers.
    #
    class ManagerList

      include MsRestAzure

      # @return [Array<Manager>] The list of storsimple managers.
      attr_accessor :value


      #
      # Mapper for ManagerList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagerList',
          type: {
            name: 'Composite',
            class_name: 'ManagerList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ManagerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Manager'
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
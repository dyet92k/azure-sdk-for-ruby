# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::AnomalyDetector::V1_0
  module Models
    #
    # Model object.
    #
    #
    class Request

      include MsRestAzure

      # @return [Array<Point>] Time series data points. Points should be sorted
      # by timestamp in ascending order to match the anomaly detection result.
      # If the data is not sorted correctly or there is duplicated timestamp,
      # the API will not work. In such case, an error message will be returned.
      attr_accessor :series

      # @return [Granularity] Can only be one of yearly, monthly, weekly,
      # daily, hourly or minutely. Granularity is used for verify whether input
      # series is valid. Possible values include: 'yearly', 'monthly',
      # 'weekly', 'daily', 'hourly', 'minutely'
      attr_accessor :granularity

      # @return [Integer] Custom Interval is used to set non-standard time
      # interval, for example, if the series is 5 minutes, request can be set
      # as {"granularity":"minutely", "customInterval":5}.
      attr_accessor :custom_interval

      # @return [Integer] Optional argument, periodic value of a time series.
      # If the value is null or does not present, the API will determine the
      # period automatically.
      attr_accessor :period

      # @return [Float] Optional argument, advanced model parameter, max
      # anomaly ratio in a time series.
      attr_accessor :max_anomaly_ratio

      # @return [Integer] Optional argument, advanced model parameter, between
      # 0-99, the lower the value is, the larger the margin value will be which
      # means less anomalies will be accepted.
      attr_accessor :sensitivity


      #
      # Mapper for Request class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Request',
          type: {
            name: 'Composite',
            class_name: 'Request',
            model_properties: {
              series: {
                client_side_validation: true,
                required: true,
                serialized_name: 'series',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Point'
                      }
                  }
                }
              },
              granularity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'granularity',
                type: {
                  name: 'Enum',
                  module: 'Granularity'
                }
              },
              custom_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customInterval',
                type: {
                  name: 'Number'
                }
              },
              period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'period',
                type: {
                  name: 'Number'
                }
              },
              max_anomaly_ratio: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxAnomalyRatio',
                type: {
                  name: 'Double'
                }
              },
              sensitivity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sensitivity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

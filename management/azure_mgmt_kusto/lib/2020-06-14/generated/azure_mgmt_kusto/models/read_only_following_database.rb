# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # Class representing a read only following database.
    #
    class ReadOnlyFollowingDatabase < Database

      include MsRestAzure


      def initialize
        @kind = "ReadOnlyFollowing"
      end

      attr_accessor :kind

      # @return [ProvisioningState] The provisioned state of the resource.
      # Possible values include: 'Running', 'Creating', 'Deleting',
      # 'Succeeded', 'Failed', 'Moving'
      attr_accessor :provisioning_state

      # @return [Duration] The time the data should be kept before it stops
      # being accessible to queries in TimeSpan.
      attr_accessor :soft_delete_period

      # @return [Duration] The time the data should be kept in cache for fast
      # queries in TimeSpan.
      attr_accessor :hot_cache_period

      # @return [DatabaseStatistics] The statistics of the database.
      attr_accessor :statistics

      # @return [String] The name of the leader cluster
      attr_accessor :leader_cluster_resource_id

      # @return [String] The name of the attached database configuration
      # cluster
      attr_accessor :attached_database_configuration_name

      # @return [PrincipalsModificationKind] The principals modification kind
      # of the database. Possible values include: 'Union', 'Replace', 'None'
      attr_accessor :principals_modification_kind


      #
      # Mapper for ReadOnlyFollowingDatabase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReadOnlyFollowing',
          type: {
            name: 'Composite',
            class_name: 'ReadOnlyFollowingDatabase',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              soft_delete_period: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.softDeletePeriod',
                type: {
                  name: 'TimeSpan'
                }
              },
              hot_cache_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hotCachePeriod',
                type: {
                  name: 'TimeSpan'
                }
              },
              statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.statistics',
                type: {
                  name: 'Composite',
                  class_name: 'DatabaseStatistics'
                }
              },
              leader_cluster_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.leaderClusterResourceId',
                type: {
                  name: 'String'
                }
              },
              attached_database_configuration_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.attachedDatabaseConfigurationName',
                type: {
                  name: 'String'
                }
              },
              principals_modification_kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.principalsModificationKind',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end

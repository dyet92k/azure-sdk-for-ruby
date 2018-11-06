# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output for the task that migrates on-prem SQL Server databases to Azure
    # SQL Database
    #
    class MigrateSqlServerSqlDbTaskOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["MigrationDatabaseLevelValidationOutput"] = "MigrateSqlServerSqlDbTaskOutputDatabaseLevelValidationResult"
      @@discriminatorMap["MigrationValidationOutput"] = "MigrateSqlServerSqlDbTaskOutputValidationResult"
      @@discriminatorMap["ErrorOutput"] = "MigrateSqlServerSqlDbTaskOutputError"
      @@discriminatorMap["TableLevelOutput"] = "MigrateSqlServerSqlDbTaskOutputTableLevel"
      @@discriminatorMap["DatabaseLevelOutput"] = "MigrateSqlServerSqlDbTaskOutputDatabaseLevel"
      @@discriminatorMap["MigrationLevelOutput"] = "MigrateSqlServerSqlDbTaskOutputMigrationLevel"

      def initialize
        @resultType = "MigrateSqlServerSqlDbTaskOutput"
      end

      attr_accessor :resultType

      # @return [String] Result identifier
      attr_accessor :id


      #
      # Mapper for MigrateSqlServerSqlDbTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSqlServerSqlDbTaskOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'resultType',
            uber_parent: 'MigrateSqlServerSqlDbTaskOutput',
            class_name: 'MigrateSqlServerSqlDbTaskOutput',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
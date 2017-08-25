# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_batch/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Batch
  module Api_2017_01_01
  autoload :BatchAccountOperations,                             'generated/azure_mgmt_batch/batch_account_operations.rb'
  autoload :ApplicationPackageOperations,                       'generated/azure_mgmt_batch/application_package_operations.rb'
  autoload :ApplicationOperations,                              'generated/azure_mgmt_batch/application_operations.rb'
  autoload :Location,                                           'generated/azure_mgmt_batch/location.rb'
  autoload :BatchManagementClient,                              'generated/azure_mgmt_batch/batch_management_client.rb'

  module Models
    autoload :BatchAccountKeys,                                   'generated/azure_mgmt_batch/models/batch_account_keys.rb'
    autoload :ActivateApplicationPackageParameters,               'generated/azure_mgmt_batch/models/activate_application_package_parameters.rb'
    autoload :KeyVaultReference,                                  'generated/azure_mgmt_batch/models/key_vault_reference.rb'
    autoload :AddApplicationParameters,                           'generated/azure_mgmt_batch/models/add_application_parameters.rb'
    autoload :AutoStorageProperties,                              'generated/azure_mgmt_batch/models/auto_storage_properties.rb'
    autoload :ApplicationPackage,                                 'generated/azure_mgmt_batch/models/application_package.rb'
    autoload :BatchAccountUpdateParameters,                       'generated/azure_mgmt_batch/models/batch_account_update_parameters.rb'
    autoload :Application,                                        'generated/azure_mgmt_batch/models/application.rb'
    autoload :BatchAccountRegenerateKeyParameters,                'generated/azure_mgmt_batch/models/batch_account_regenerate_key_parameters.rb'
    autoload :ListApplicationsResult,                             'generated/azure_mgmt_batch/models/list_applications_result.rb'
    autoload :BatchAccountCreateParameters,                       'generated/azure_mgmt_batch/models/batch_account_create_parameters.rb'
    autoload :UpdateApplicationParameters,                        'generated/azure_mgmt_batch/models/update_application_parameters.rb'
    autoload :BatchAccountListResult,                             'generated/azure_mgmt_batch/models/batch_account_list_result.rb'
    autoload :BatchLocationQuota,                                 'generated/azure_mgmt_batch/models/batch_location_quota.rb'
    autoload :AutoStorageBaseProperties,                          'generated/azure_mgmt_batch/models/auto_storage_base_properties.rb'
    autoload :BatchAccount,                                       'generated/azure_mgmt_batch/models/batch_account.rb'
    autoload :PoolAllocationMode,                                 'generated/azure_mgmt_batch/models/pool_allocation_mode.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_batch/models/provisioning_state.rb'
    autoload :AccountKeyType,                                     'generated/azure_mgmt_batch/models/account_key_type.rb'
    autoload :PackageState,                                       'generated/azure_mgmt_batch/models/package_state.rb'
  end
 end
end

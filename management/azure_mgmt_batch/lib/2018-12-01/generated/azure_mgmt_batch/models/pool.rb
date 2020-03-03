# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # Contains information about a pool.
    #
    class Pool < ProxyResource

      include MsRestAzure

      # @return [String] The display name for the pool. The display name need
      # not be unique and can contain any Unicode characters up to a maximum
      # length of 1024.
      attr_accessor :display_name

      # @return [DateTime] The last modified time of the pool. This is the last
      # time at which the pool level data, such as the targetDedicatedNodes or
      # autoScaleSettings, changed. It does not factor in node-level changes
      # such as a compute node changing state.
      attr_accessor :last_modified

      # @return [DateTime] The creation time of the pool.
      attr_accessor :creation_time

      # @return [PoolProvisioningState] The current state of the pool. Possible
      # values include: 'Succeeded', 'Deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The time at which the pool entered its current
      # state.
      attr_accessor :provisioning_state_transition_time

      # @return [AllocationState] Whether the pool is resizing. Possible values
      # include: 'Steady', 'Resizing', 'Stopping'
      attr_accessor :allocation_state

      # @return [DateTime] The time at which the pool entered its current
      # allocation state.
      attr_accessor :allocation_state_transition_time

      # @return [String] The size of virtual machines in the pool. All VMs in a
      # pool are the same size. For information about available sizes of
      # virtual machines for Cloud Services pools (pools created with
      # cloudServiceConfiguration), see Sizes for Cloud Services
      # (https://azure.microsoft.com/documentation/articles/cloud-services-sizes-specs/).
      # Batch supports all Cloud Services VM sizes except ExtraSmall. For
      # information about available VM sizes for pools using images from the
      # Virtual Machines Marketplace (pools created with
      # virtualMachineConfiguration) see Sizes for Virtual Machines (Linux)
      # (https://azure.microsoft.com/documentation/articles/virtual-machines-linux-sizes/)
      # or Sizes for Virtual Machines (Windows)
      # (https://azure.microsoft.com/documentation/articles/virtual-machines-windows-sizes/).
      # Batch supports all Azure VM sizes except STANDARD_A0 and those with
      # premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
      attr_accessor :vm_size

      # @return [DeploymentConfiguration] This property describes how the pool
      # nodes will be deployed - using Cloud Services or Virtual Machines.
      # Using CloudServiceConfiguration specifies that the nodes should be
      # creating using Azure Cloud Services (PaaS), while
      # VirtualMachineConfiguration uses Azure Virtual Machines (IaaS).
      attr_accessor :deployment_configuration

      # @return [Integer] The number of compute nodes currently in the pool.
      attr_accessor :current_dedicated_nodes

      # @return [Integer] The number of low priority compute nodes currently in
      # the pool.
      attr_accessor :current_low_priority_nodes

      # @return [ScaleSettings] Settings which configure the number of nodes in
      # the pool.
      attr_accessor :scale_settings

      # @return [AutoScaleRun] The results and errors from the last execution
      # of the autoscale formula. This property is set only if the pool
      # automatically scales, i.e. autoScaleSettings are used.
      attr_accessor :auto_scale_run

      # @return [InterNodeCommunicationState] Whether the pool permits direct
      # communication between nodes. This imposes restrictions on which nodes
      # can be assigned to the pool. Enabling this value can reduce the chance
      # of the requested number of nodes to be allocated in the pool. If not
      # specified, this value defaults to 'Disabled'. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :inter_node_communication

      # @return [NetworkConfiguration] The network configuration for the pool.
      attr_accessor :network_configuration

      # @return [Integer] The maximum number of tasks that can run concurrently
      # on a single compute node in the pool.
      attr_accessor :max_tasks_per_node

      # @return [TaskSchedulingPolicy] How tasks are distributed across compute
      # nodes in a pool.
      attr_accessor :task_scheduling_policy

      # @return [Array<UserAccount>] The list of user accounts to be created on
      # each node in the pool.
      attr_accessor :user_accounts

      # @return [Array<MetadataItem>] A list of name-value pairs associated
      # with the pool as metadata. The Batch service does not assign any
      # meaning to metadata; it is solely for the use of user code.
      attr_accessor :metadata

      # @return [StartTask] A task specified to run on each compute node as it
      # joins the pool. In an PATCH (update) operation, this property can be
      # set to an empty object to remove the start task from the pool.
      attr_accessor :start_task

      # @return [Array<CertificateReference>] The list of certificates to be
      # installed on each compute node in the pool. For Windows compute nodes,
      # the Batch service installs the certificates to the specified
      # certificate store and location. For Linux compute nodes, the
      # certificates are stored in a directory inside the task working
      # directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is
      # supplied to the task to query for this location. For certificates with
      # visibility of 'remoteUser', a 'certs' directory is created in the
      # user's home directory (e.g., /home/{user-name}/certs) and certificates
      # are placed in that directory.
      attr_accessor :certificates

      # @return [Array<ApplicationPackageReference>] The list of application
      # packages to be installed on each compute node in the pool. Changes to
      # application packages affect all new compute nodes joining the pool, but
      # do not affect compute nodes that are already in the pool until they are
      # rebooted or reimaged.
      attr_accessor :application_packages

      # @return [Array<String>] The list of application licenses the Batch
      # service will make available on each compute node in the pool. The list
      # of application licenses must be a subset of available Batch service
      # application licenses. If a license is requested which is not supported,
      # pool creation will fail.
      attr_accessor :application_licenses

      # @return [ResizeOperationStatus] Contains details about the current or
      # last completed resize operation.
      attr_accessor :resize_operation_status


      #
      # Mapper for Pool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Pool',
          type: {
            name: 'Composite',
            class_name: 'Pool',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'PoolProvisioningState'
                }
              },
              provisioning_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              allocation_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationState',
                type: {
                  name: 'Enum',
                  module: 'AllocationState'
                }
              },
              allocation_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmSize',
                type: {
                  name: 'String'
                }
              },
              deployment_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deploymentConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentConfiguration'
                }
              },
              current_dedicated_nodes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currentDedicatedNodes',
                type: {
                  name: 'Number'
                }
              },
              current_low_priority_nodes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currentLowPriorityNodes',
                type: {
                  name: 'Number'
                }
              },
              scale_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scaleSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleSettings'
                }
              },
              auto_scale_run: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.autoScaleRun',
                type: {
                  name: 'Composite',
                  class_name: 'AutoScaleRun'
                }
              },
              inter_node_communication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.interNodeCommunication',
                type: {
                  name: 'Enum',
                  module: 'InterNodeCommunicationState'
                }
              },
              network_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkConfiguration'
                }
              },
              max_tasks_per_node: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxTasksPerNode',
                type: {
                  name: 'Number'
                }
              },
              task_scheduling_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.taskSchedulingPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'TaskSchedulingPolicy'
                }
              },
              user_accounts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserAccount'
                      }
                  }
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataItem'
                      }
                  }
                }
              },
              start_task: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTask',
                type: {
                  name: 'Composite',
                  class_name: 'StartTask'
                }
              },
              certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CertificateReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CertificateReference'
                      }
                  }
                }
              },
              application_packages: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationPackages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationPackageReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationPackageReference'
                      }
                  }
                }
              },
              application_licenses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationLicenses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              resize_operation_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resizeOperationStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ResizeOperationStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
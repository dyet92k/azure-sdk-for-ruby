# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Api_2017_03_30
  #
  # Compute Client
  #
  class AvailabilitySets
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AvailabilitySets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # Create or update an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param parameters [AvailabilitySet] Parameters supplied to the Create
    # Availability Set operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilitySet] operation results.
    #
    def create_or_update(resource_group_name, availability_set_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, availability_set_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param parameters [AvailabilitySet] Parameters supplied to the Create
    # Availability Set operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, availability_set_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, availability_set_name, parameters, custom_headers).value!
    end

    #
    # Create or update an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param parameters [AvailabilitySet] Parameters supplied to the Create
    # Availability Set operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, availability_set_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySet.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'availabilitySetName' => availability_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySet.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Delete an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatusResponse] operation results.
    #
    def delete(resource_group_name, availability_set_name, custom_headers = nil)
      response = delete_async(resource_group_name, availability_set_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Delete an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, availability_set_name, custom_headers = nil)
      delete_async(resource_group_name, availability_set_name, custom_headers).value!
    end

    #
    # Delete an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'availabilitySetName' => availability_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::OperationStatusResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Retrieves information about an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilitySet] operation results.
    #
    def get(resource_group_name, availability_set_name, custom_headers = nil)
      response = get_async(resource_group_name, availability_set_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves information about an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, availability_set_name, custom_headers = nil)
      get_async(resource_group_name, availability_set_name, custom_headers).value!
    end

    #
    # Retrieves information about an availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'availabilitySetName' => availability_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySet.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all availability sets in a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilitySetListResult] operation results.
    #
    def list(resource_group_name, custom_headers = nil)
      response = list_async(resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all availability sets in a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, custom_headers = nil)
      list_async(resource_group_name, custom_headers).value!
    end

    #
    # Lists all availability sets in a resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySetListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all available virtual machine sizes that can be used to create a new
    # virtual machine in an existing availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineSizeListResult] operation results.
    #
    def list_available_sizes(resource_group_name, availability_set_name, custom_headers = nil)
      response = list_available_sizes_async(resource_group_name, availability_set_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all available virtual machine sizes that can be used to create a new
    # virtual machine in an existing availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_available_sizes_with_http_info(resource_group_name, availability_set_name, custom_headers = nil)
      list_available_sizes_async(resource_group_name, availability_set_name, custom_headers).value!
    end

    #
    # Lists all available virtual machine sizes that can be used to create a new
    # virtual machine in an existing availability set.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_available_sizes_async(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/vmSizes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'availabilitySetName' => availability_set_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSizeListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
end

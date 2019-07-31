# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  #
  # ApiManagement Client
  #
  class GroupUser
    include MsRestAzure

    #
    # Creates and initializes a new instance of the GroupUser class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] |   Field     |     Usage     |     Supported
    # operators     |     Supported functions
    # |</br>|-------------|-------------|-------------|-------------|</br>| name |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>| firstName | filter | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith | </br>| lastName | filter | ge, le, eq, ne, gt, lt |
    # substringof, contains, startswith, endswith | </br>| email | filter | ge, le,
    # eq, ne, gt, lt | substringof, contains, startswith, endswith | </br>|
    # registrationDate | filter | ge, le, eq, ne, gt, lt |     | </br>| note |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<UserContract>] operation results.
    #
    def list(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] |   Field     |     Usage     |     Supported
    # operators     |     Supported functions
    # |</br>|-------------|-------------|-------------|-------------|</br>| name |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>| firstName | filter | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith | </br>| lastName | filter | ge, le, eq, ne, gt, lt |
    # substringof, contains, startswith, endswith | </br>| email | filter | ge, le,
    # eq, ne, gt, lt | substringof, contains, startswith, endswith | </br>|
    # registrationDate | filter | ge, le, eq, ne, gt, lt |     | </br>| note |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      list_async(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] |   Field     |     Usage     |     Supported
    # operators     |     Supported functions
    # |</br>|-------------|-------------|-------------|-------------|</br>| name |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>| firstName | filter | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith | </br>| lastName | filter | ge, le, eq, ne, gt, lt |
    # substringof, contains, startswith, endswith | </br>| email | filter | ge, le,
    # eq, ne, gt, lt | substringof, contains, startswith, endswith | </br>|
    # registrationDate | filter | ge, le, eq, ne, gt, lt |     | </br>| note |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, "'skip' should satisfy the constraint - 'InclusiveMinimum': '0'" if !skip.nil? && skip < 0
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$skip' => skip,'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCollection.mapper()
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
    # Checks that user entity specified by identifier is associated with the group
    # entity.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Boolean] operation results.
    #
    def check_entity_exists(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      response = check_entity_exists_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks that user entity specified by identifier is associated with the group
    # entity.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_entity_exists_with_http_info(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      check_entity_exists_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
    end

    #
    # Checks that user entity specified by identifier is associated with the group
    # entity.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_entity_exists_async(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, 'user_id is nil' if user_id.nil?
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MaxLength': '80'" if !user_id.nil? && user_id.length > 80
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MinLength': '1'" if !user_id.nil? && user_id.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{userId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'userId' => user_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:head, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.body = (status_code == 204)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Add existing user to existing group
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserContract] operation results.
    #
    def create(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      response = create_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add existing user to existing group
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      create_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
    end

    #
    # Add existing user to existing group
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, 'user_id is nil' if user_id.nil?
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MaxLength': '80'" if !user_id.nil? && user_id.length > 80
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MinLength': '1'" if !user_id.nil? && user_id.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{userId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'userId' => user_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserContract.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserContract.mapper()
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
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      response = delete_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      delete_async(resource_group_name, service_name, group_id, user_id, custom_headers:custom_headers).value!
    end

    #
    # Remove existing user from existing group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param user_id [String] User identifier. Must be unique in the current API
    # Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, service_name, group_id, user_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'group_id is nil' if group_id.nil?
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MaxLength': '256'" if !group_id.nil? && group_id.length > 256
      fail ArgumentError, "'group_id' should satisfy the constraint - 'MinLength': '1'" if !group_id.nil? && group_id.length < 1
      fail ArgumentError, 'user_id is nil' if user_id.nil?
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MaxLength': '80'" if !user_id.nil? && user_id.length > 80
      fail ArgumentError, "'user_id' should satisfy the constraint - 'MinLength': '1'" if !user_id.nil? && user_id.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{userId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'groupId' => group_id,'userId' => user_id,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserCollection] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of user entities associated with the group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCollection.mapper()
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
    # Lists a collection of user entities associated with the group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param group_id [String] Group identifier. Must be unique in the current API
    # Management service instance.
    # @param filter [String] |   Field     |     Usage     |     Supported
    # operators     |     Supported functions
    # |</br>|-------------|-------------|-------------|-------------|</br>| name |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>| firstName | filter | ge, le, eq, ne, gt, lt | substringof, contains,
    # startswith, endswith | </br>| lastName | filter | ge, le, eq, ne, gt, lt |
    # substringof, contains, startswith, endswith | </br>| email | filter | ge, le,
    # eq, ne, gt, lt | substringof, contains, startswith, endswith | </br>|
    # registrationDate | filter | ge, le, eq, ne, gt, lt |     | </br>| note |
    # filter | ge, le, eq, ne, gt, lt | substringof, contains, startswith, endswith
    # | </br>
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserCollection] which provide lazy access to pages of the response.
    #
    def list_as_lazy(resource_group_name, service_name, group_id, filter:nil, top:nil, skip:nil, custom_headers:nil)
      response = list_async(resource_group_name, service_name, group_id, filter:filter, top:top, skip:skip, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
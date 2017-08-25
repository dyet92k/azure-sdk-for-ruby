# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Api_2017_03_30
  #
  # Compute Client
  #
  class VirtualMachineExtensionImages
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VirtualMachineExtensionImages class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # Gets a virtual machine extension image.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param version [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineExtensionImage] operation results.
    #
    def get(location, publisher_name, type, version, custom_headers = nil)
      response = get_async(location, publisher_name, type, version, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a virtual machine extension image.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param version [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, publisher_name, type, version, custom_headers = nil)
      get_async(location, publisher_name, type, version, custom_headers).value!
    end

    #
    # Gets a virtual machine extension image.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param version [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, publisher_name, type, version, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, 'type is nil' if type.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types/{type}/versions/{version}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'type' => type,'version' => version,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionImage.mapper()
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
    # Gets a list of virtual machine extension image types.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_types(location, publisher_name, custom_headers = nil)
      response = list_types_async(location, publisher_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine extension image types.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_types_with_http_info(location, publisher_name, custom_headers = nil)
      list_types_async(location, publisher_name, custom_headers).value!
    end

    #
    # Gets a list of virtual machine extension image types.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_types_async(location, publisher_name, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineExtensionImageElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineExtensionImage'
                    }
                }
              }
            }
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
    # Gets a list of virtual machine extension image versions.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_versions(location, publisher_name, type, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      response = list_versions_async(location, publisher_name, type, filter, top, orderby, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine extension image versions.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_versions_with_http_info(location, publisher_name, type, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      list_versions_async(location, publisher_name, type, filter, top, orderby, custom_headers).value!
    end

    #
    # Gets a list of virtual machine extension image versions.
    #
    # @param location [String] The name of a supported Azure region.
    # @param publisher_name [String]
    # @param type [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_versions_async(location, publisher_name, type, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, 'type is nil' if type.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmextension/types/{type}/versions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'type' => type,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$orderby' => orderby,'api-version' => @client.api_version},
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
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineExtensionImageElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineExtensionImage'
                    }
                }
              }
            }
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

# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/profile_2014_12_01/mobileengagement_profile_2014_12_01_module_definition.rb'
require 'profiles/profile_2014_12_01/modules/mobileengagement_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::MobileEngagement::Management::Profile_2014_12_01
  #
  # Client class for the Profile_2014_12_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :mobile_engagement

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @mobile_engagement = MobileEngagementClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
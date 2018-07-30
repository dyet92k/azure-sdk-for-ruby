# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Describes the server certificate details using common name.
    #
    class ServerCertificateCommonName

      include MsRestAzure

      # @return [String] The common name of the server certificate.
      attr_accessor :certificate_common_name

      # @return [String] The issuer thumbprint of the server certificate.
      attr_accessor :certificate_issuer_thumbprint


      #
      # Mapper for ServerCertificateCommonName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerCertificateCommonName',
          type: {
            name: 'Composite',
            class_name: 'ServerCertificateCommonName',
            model_properties: {
              certificate_common_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateCommonName',
                type: {
                  name: 'String'
                }
              },
              certificate_issuer_thumbprint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateIssuerThumbprint',
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
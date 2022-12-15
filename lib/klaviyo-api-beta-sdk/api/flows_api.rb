=begin
#Klaviyo API (Beta)

#The Klaviyo REST API. Please visit https://developers.klaviyo.com for more details.

The version of the OpenAPI document: 2022-12-15.pre
Contact: developers@klaviyo.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module KlaviyoBetaAPI
  class FlowsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Flow Tags
    # Return all tags associated with the given flow ID.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Flows Read` `Tags Read`
    # @param flow_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
    # @return [Hash<String, Object>]
    def get_flow_tags(flow_id, opts = {})
      data, _status_code, _headers = get_flow_tags_with_http_info(flow_id, opts)
      data
    end

    # Get Flow Tags
    # Return all tags associated with the given flow ID.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Flows Read&#x60; &#x60;Tags Read&#x60;
    # @param flow_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_flow_tags_with_http_info(flow_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlowsApi.get_flow_tags ...'
      end
      # verify the required parameter 'flow_id' is set
      if @api_client.config.client_side_validation && flow_id.nil?
        fail ArgumentError, "Missing the required parameter 'flow_id' when calling FlowsApi.get_flow_tags"
      end
      allowable_values = ["name"]
      if @api_client.config.client_side_validation && opts[:'fields_tag'] && !opts[:'fields_tag'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"fields_tag\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/flows/{flow_id}/tags/'.sub('{' + 'flow_id' + '}', CGI.escape(flow_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields[tag]'] = @api_client.build_collection_param(opts[:'fields_tag'], :csv) if !opts[:'fields_tag'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # klaviyo api revision
      header_params['revision'] =  ENV['API_REVISION'] || "2022-12-15.pre"
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Klaviyo-API-Key']

      new_options = opts.merge(
        :operation => :"FlowsApi.get_flow_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlowsApi#get_flow_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

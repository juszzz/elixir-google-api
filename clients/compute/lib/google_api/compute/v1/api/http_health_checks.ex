# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Api.HttpHealthChecks do
  @moduledoc """
  API calls for all endpoints tagged `HttpHealthChecks`.
  """

  alias GoogleApi.Compute.V1.Connection
  import GoogleApi.Compute.V1.RequestBuilder


  @doc """
  Deletes the specified HttpHealthCheck resource.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - http_health_check (String): Name of the HttpHealthCheck resource to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :request_id (String): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_delete(connection, project, http_health_check, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"requestId" => :query
    }
    %{}
    |> method(:delete)
    |> url("/#{project}/global/httpHealthChecks/#{http_health_check}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.Operation{})
  end

  @doc """
  Returns the specified HttpHealthCheck resource. Get a list of available HTTP health checks by making a list() request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - http_health_check (String): Name of the HttpHealthCheck resource to return.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.HttpHealthCheck{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.HttpHealthCheck.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_get(connection, project, http_health_check, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/httpHealthChecks/#{http_health_check}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.HttpHealthCheck{})
  end

  @doc """
  Creates a HttpHealthCheck resource in the specified project using the data included in the request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :request_id (String): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (HttpHealthCheck): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_insert(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"requestId" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/global/httpHealthChecks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.Operation{})
  end

  @doc """
  Retrieves the list of HttpHealthCheck resources available to the specified project.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :filter (String): Sets a filter {expression} for filtering listed resources. Your {expression} must be in the format: field_name comparison_string literal_string.  The field_name is the name of the field you want to compare. Only atomic field types are supported (string, number, boolean). The comparison_string must be either eq (equals) or ne (not equals). The literal_string is the string value to filter to. The literal value must be valid for the type of field you are filtering by (string, number, boolean). For string fields, the literal value is interpreted as a regular expression using RE2 syntax. The literal value must match the entire field.  For example, to filter for instances that do not have a name of example-instance, you would use name ne example-instance.  You can filter on nested fields. For example, you could filter on instances that have set the scheduling.automaticRestart field to true. Use filtering on nested fields to take advantage of labels to organize and search for results based on label values.  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are treated as AND expressions, meaning that resources must match all expressions to pass the filters.
    - :max_results (Integer): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :order_by (String): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.  You can also sort results in descending order based on the creation timestamp using orderBy&#x3D;\&quot;creationTimestamp desc\&quot;. This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.  Currently, only sorting by name or creationTimestamp desc is supported.
    - :page_token (String): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.HttpHealthCheckList{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.HttpHealthCheckList.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"filter" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/httpHealthChecks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.HttpHealthCheckList{})
  end

  @doc """
  Updates a HttpHealthCheck resource in the specified project using the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - http_health_check (String): Name of the HttpHealthCheck resource to patch.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :request_id (String): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (HttpHealthCheck): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_patch(connection, project, http_health_check, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"requestId" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/#{project}/global/httpHealthChecks/#{http_health_check}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.Operation{})
  end

  @doc """
  Updates a HttpHealthCheck resource in the specified project using the data included in the request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String): Project ID for this request.
  - http_health_check (String): Name of the HttpHealthCheck resource to update.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :request_id (String): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (HttpHealthCheck): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_http_health_checks_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Compute.V1.Model.Operation.t} | {:error, Tesla.Env.t}
  def compute_http_health_checks_update(connection, project, http_health_check, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"requestId" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/#{project}/global/httpHealthChecks/#{http_health_check}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Compute.V1.Model.Operation{})
  end
end

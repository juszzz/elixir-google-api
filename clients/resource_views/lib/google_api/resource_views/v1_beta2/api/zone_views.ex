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

defmodule GoogleApi.ResourceViews.V1BETA2.Api.ZoneViews do
  @moduledoc """
  API calls for all endpoints tagged `ZoneViews`.
  """

  alias GoogleApi.ResourceViews.V1BETA2.Connection
  import GoogleApi.ResourceViews.V1BETA2.RequestBuilder


  @doc """
  Add resources to the view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ZoneViewsAddResourcesRequest): 

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_add_resources(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.Operation.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_add_resources(connection, project, zone, resource_view, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}/addResources")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.Operation{})
  end

  @doc """
  Delete a resource view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.Operation.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_delete(connection, project, zone, resource_view, opts \\ []) do
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
    |> method(:delete)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.Operation{})
  end

  @doc """
  Get the information of a zonal resource view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.ResourceView{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.ResourceView.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_get(connection, project, zone, resource_view, opts \\ []) do
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
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.ResourceView{})
  end

  @doc """
  Get the service information of a resource view or a resource.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :resource_name (String): The name of the resource if user wants to get the service information of the resource.

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsGetServiceResponse{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_get_service(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsGetServiceResponse.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_get_service(connection, project, zone, resource_view, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"resourceName" => :query
    }
    %{}
    |> method(:post)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}/getService")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsGetServiceResponse{})
  end

  @doc """
  Create a resource view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ResourceView): 

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_insert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.Operation.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_insert(connection, project, zone, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/zones/#{zone}/resourceViews")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.Operation{})
  end

  @doc """
  List resource views.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum count of results to be returned. Acceptable values are 0 to 5000, inclusive. (Default: 5000)
    - :page_token (String): Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsList{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsList.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_list(connection, project, zone, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/zones/#{zone}/resourceViews")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsList{})
  end

  @doc """
  List the resources of the resource view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :format (String): The requested format of the return value. It can be URL or URL_PORT. A JSON object will be included in the response based on the format. The default format is NONE, which results in no JSON in the response.
    - :list_state (String): The state of the instance to list. By default, it lists all instances.
    - :max_results (Integer): Maximum count of results to be returned. Acceptable values are 0 to 5000, inclusive. (Default: 5000)
    - :page_token (String): Specifies a nextPageToken returned by a previous list request. This token can be used to request the next page of results from a previous list request.
    - :service_name (String): The service name to return in the response. It is optional and if it is not set, all the service end points will be returned.

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsListResourcesResponse{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_list_resources(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsListResourcesResponse.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_list_resources(connection, project, zone, resource_view, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"format" => :query,
      :"listState" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"serviceName" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}/resources")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.ZoneViewsListResourcesResponse{})
  end

  @doc """
  Remove resources from the view.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ZoneViewsRemoveResourcesRequest): 

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_remove_resources(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.Operation.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_remove_resources(connection, project, zone, resource_view, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}/removeResources")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.Operation{})
  end

  @doc """
  Update the service information of a resource view or a resource.

  ## Parameters

  - connection (GoogleApi.ResourceViews.V1BETA2.Connection): Connection to server
  - project (String): The project name of the resource view.
  - zone (String): The zone name of the resource view.
  - resource_view (String): The name of the resource view.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ZoneViewsSetServiceRequest): 

  ## Returns

  {:ok, %GoogleApi.ResourceViews.V1BETA2.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec resourceviews_zone_views_set_service(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.ResourceViews.V1BETA2.Model.Operation.t} | {:error, Tesla.Env.t}
  def resourceviews_zone_views_set_service(connection, project, zone, resource_view, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{project}/zones/#{zone}/resourceViews/#{resource_view}/setService")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.ResourceViews.V1BETA2.Model.Operation{})
  end
end

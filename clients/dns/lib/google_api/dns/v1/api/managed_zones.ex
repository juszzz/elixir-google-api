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

defmodule GoogleApi.DNS.V1.Api.ManagedZones do
  @moduledoc """
  API calls for all endpoints tagged `ManagedZones`.
  """

  alias GoogleApi.DNS.V1.Connection
  import GoogleApi.DNS.V1.RequestBuilder


  @doc """
  Create a new ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String): Identifies the project addressed by this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ManagedZone): 

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_create(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t} | {:error, Tesla.Env.t}
  def dns_managed_zones_create(connection, project, opts \\ []) do
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
    |> url("/#{project}/managedZones")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DNS.V1.Model.ManagedZone{})
  end

  @doc """
  Delete a previously created ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String): Identifies the project addressed by this request.
  - managed_zone (String): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dns_managed_zones_delete(connection, project, managed_zone, opts \\ []) do
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
    |> url("/#{project}/managedZones/#{managed_zone}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Fetch the representation of an existing ManagedZone.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String): Identifies the project addressed by this request.
  - managed_zone (String): Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t} | {:error, Tesla.Env.t}
  def dns_managed_zones_get(connection, project, managed_zone, opts \\ []) do
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
    |> url("/#{project}/managedZones/#{managed_zone}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DNS.V1.Model.ManagedZone{})
  end

  @doc """
  Enumerate ManagedZones that have been created but not yet deleted.

  ## Parameters

  - connection (GoogleApi.DNS.V1.Connection): Connection to server
  - project (String): Identifies the project addressed by this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :dns_name (String): Restricts the list to return only zones with this domain name.
    - :max_results (Integer): Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
    - :page_token (String): Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.

  ## Returns

  {:ok, %GoogleApi.DNS.V1.Model.ManagedZonesListResponse{}} on success
  {:error, info} on failure
  """
  @spec dns_managed_zones_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DNS.V1.Model.ManagedZonesListResponse.t} | {:error, Tesla.Env.t}
  def dns_managed_zones_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"dnsName" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/managedZones")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DNS.V1.Model.ManagedZonesListResponse{})
  end
end

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

defmodule GoogleApi.FusionTables.V2.Api.Style do
  @moduledoc """
  API calls for all endpoints tagged `Style`.
  """

  alias GoogleApi.FusionTables.V2.Connection
  import GoogleApi.FusionTables.V2.RequestBuilder


  @doc """
  Deletes a style.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table from which the style is being deleted
  - style_id (Integer): Identifier (within a table) for the style being deleted
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
  @spec fusiontables_style_delete(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def fusiontables_style_delete(connection, table_id, style_id, opts \\ []) do
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
    |> url("/fusiontables/v2/tables/#{table_id}/styles/#{style_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a specific style.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table to which the requested style belongs
  - style_id (Integer): Identifier (integer) for a specific style in a table
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.StyleSetting{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_style_get(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.StyleSetting.t} | {:error, Tesla.Env.t}
  def fusiontables_style_get(connection, table_id, style_id, opts \\ []) do
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
    |> url("/fusiontables/v2/tables/#{table_id}/styles/#{style_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.StyleSetting{})
  end

  @doc """
  Adds a new style for the table.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table for which a new style is being added
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StyleSetting): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.StyleSetting{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_style_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.StyleSetting.t} | {:error, Tesla.Env.t}
  def fusiontables_style_insert(connection, table_id, opts \\ []) do
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
    |> url("/fusiontables/v2/tables/#{table_id}/styles")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.StyleSetting{})
  end

  @doc """
  Retrieves a list of styles.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table whose styles are being listed
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of styles to return. Optional. Default is 5.
    - :page_token (String): Continuation token specifying which result page to return. Optional.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.StyleSettingList{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_style_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.StyleSettingList.t} | {:error, Tesla.Env.t}
  def fusiontables_style_list(connection, table_id, opts \\ []) do
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
    |> url("/fusiontables/v2/tables/#{table_id}/styles")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.StyleSettingList{})
  end

  @doc """
  Updates an existing style. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table whose style is being updated.
  - style_id (Integer): Identifier (within a table) for the style being updated.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StyleSetting): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.StyleSetting{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_style_patch(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.StyleSetting.t} | {:error, Tesla.Env.t}
  def fusiontables_style_patch(connection, table_id, style_id, opts \\ []) do
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
    |> method(:patch)
    |> url("/fusiontables/v2/tables/#{table_id}/styles/#{style_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.StyleSetting{})
  end

  @doc """
  Updates an existing style.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table whose style is being updated.
  - style_id (Integer): Identifier (within a table) for the style being updated.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (StyleSetting): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.StyleSetting{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_style_update(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.StyleSetting.t} | {:error, Tesla.Env.t}
  def fusiontables_style_update(connection, table_id, style_id, opts \\ []) do
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
    |> method(:put)
    |> url("/fusiontables/v2/tables/#{table_id}/styles/#{style_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.StyleSetting{})
  end
end

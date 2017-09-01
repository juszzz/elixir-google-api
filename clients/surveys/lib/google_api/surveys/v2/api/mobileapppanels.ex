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

defmodule GoogleApi.Surveys.V2.Api.Mobileapppanels do
  @moduledoc """
  API calls for all endpoints tagged `Mobileapppanels`.
  """

  alias GoogleApi.Surveys.V2.Connection
  import GoogleApi.Surveys.V2.RequestBuilder


  @doc """
  Retrieves a MobileAppPanel that is available to the authenticated user.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - panel_id (String): External URL ID for the panel.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.MobileAppPanel{}} on success
  {:error, info} on failure
  """
  @spec surveys_mobileapppanels_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Surveys.V2.Model.MobileAppPanel.t} | {:error, Tesla.Env.t}
  def surveys_mobileapppanels_get(connection, panel_id, opts \\ []) do
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
    |> url("/mobileAppPanels/#{panel_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Surveys.V2.Model.MobileAppPanel{})
  end

  @doc """
  Lists the MobileAppPanels available to the authenticated user.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): 
    - :start_index (Integer): 
    - :token (String): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.MobileAppPanelsListResponse{}} on success
  {:error, info} on failure
  """
  @spec surveys_mobileapppanels_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Surveys.V2.Model.MobileAppPanelsListResponse.t} | {:error, Tesla.Env.t}
  def surveys_mobileapppanels_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"startIndex" => :query,
      :"token" => :query
    }
    %{}
    |> method(:get)
    |> url("/mobileAppPanels")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Surveys.V2.Model.MobileAppPanelsListResponse{})
  end

  @doc """
  Updates a MobileAppPanel. Currently the only property that can be updated is the owners property.

  ## Parameters

  - connection (GoogleApi.Surveys.V2.Connection): Connection to server
  - panel_id (String): External URL ID for the panel.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (MobileAppPanel): 

  ## Returns

  {:ok, %GoogleApi.Surveys.V2.Model.MobileAppPanel{}} on success
  {:error, info} on failure
  """
  @spec surveys_mobileapppanels_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Surveys.V2.Model.MobileAppPanel.t} | {:error, Tesla.Env.t}
  def surveys_mobileapppanels_update(connection, panel_id, opts \\ []) do
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
    |> url("/mobileAppPanels/#{panel_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Surveys.V2.Model.MobileAppPanel{})
  end
end

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

defmodule GoogleApi.Games.V1.Api.Metagame do
  @moduledoc """
  API calls for all endpoints tagged `Metagame`.
  """

  alias GoogleApi.Games.V1.Connection
  import GoogleApi.Games.V1.RequestBuilder


  @doc """
  Return the metagame configuration data for the calling application.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.MetagameConfig{}} on success
  {:error, info} on failure
  """
  @spec games_metagame_get_metagame_config(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Games.V1.Model.MetagameConfig.t} | {:error, Tesla.Env.t}
  def games_metagame_get_metagame_config(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/metagameConfig")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.MetagameConfig{})
  end

  @doc """
  List play data aggregated per category for the player corresponding to playerId.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - player_id (String): A player ID. A value of me may be used in place of the authenticated player&#39;s ID.
  - collection (String): The collection of categories for which data will be returned.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :consistency_token (String): The last-seen mutation timestamp.
    - :language (String): The preferred language to use for strings returned by this method.
    - :max_results (Integer): The maximum number of category resources to return in the response, used for paging. For any response, the actual number of category resources returned may be less than the specified maxResults.
    - :page_token (String): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.CategoryListResponse{}} on success
  {:error, info} on failure
  """
  @spec games_metagame_list_categories_by_player(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Games.V1.Model.CategoryListResponse.t} | {:error, Tesla.Env.t}
  def games_metagame_list_categories_by_player(connection, player_id, collection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"consistencyToken" => :query,
      :"language" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/players/{playerId}/categories/{collection}", %{
         "playerId" => URI.encode_www_form(player_id),
         "collection" => URI.encode_www_form(collection)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Games.V1.Model.CategoryListResponse{})
  end
end

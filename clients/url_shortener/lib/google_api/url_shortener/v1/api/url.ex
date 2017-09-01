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

defmodule GoogleApi.UrlShortener.V1.Api.Url do
  @moduledoc """
  API calls for all endpoints tagged `Url`.
  """

  alias GoogleApi.UrlShortener.V1.Connection
  import GoogleApi.UrlShortener.V1.RequestBuilder


  @doc """
  Expands a short URL or gets creation time and analytics.

  ## Parameters

  - connection (GoogleApi.UrlShortener.V1.Connection): Connection to server
  - short_url (String): The short URL, including the protocol.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :projection (String): Additional information to return.

  ## Returns

  {:ok, %GoogleApi.UrlShortener.V1.Model.Url{}} on success
  {:error, info} on failure
  """
  @spec urlshortener_url_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.UrlShortener.V1.Model.Url.t} | {:error, Tesla.Env.t}
  def urlshortener_url_get(connection, short_url, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"projection" => :query
    }
    %{}
    |> method(:get)
    |> url("/url")
    |> add_param(:query, :"shortUrl", short_url)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.UrlShortener.V1.Model.Url{})
  end

  @doc """
  Creates a new short URL.

  ## Parameters

  - connection (GoogleApi.UrlShortener.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Url): 

  ## Returns

  {:ok, %GoogleApi.UrlShortener.V1.Model.Url{}} on success
  {:error, info} on failure
  """
  @spec urlshortener_url_insert(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.UrlShortener.V1.Model.Url.t} | {:error, Tesla.Env.t}
  def urlshortener_url_insert(connection, opts \\ []) do
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
    |> url("/url")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.UrlShortener.V1.Model.Url{})
  end

  @doc """
  Retrieves a list of URLs shortened by a user.

  ## Parameters

  - connection (GoogleApi.UrlShortener.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :projection (String): Additional information to return.
    - :start_token (String): Token for requesting successive pages of results.

  ## Returns

  {:ok, %GoogleApi.UrlShortener.V1.Model.UrlHistory{}} on success
  {:error, info} on failure
  """
  @spec urlshortener_url_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.UrlShortener.V1.Model.UrlHistory.t} | {:error, Tesla.Env.t}
  def urlshortener_url_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"projection" => :query,
      :"start-token" => :query
    }
    %{}
    |> method(:get)
    |> url("/url/history")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.UrlShortener.V1.Model.UrlHistory{})
  end
end

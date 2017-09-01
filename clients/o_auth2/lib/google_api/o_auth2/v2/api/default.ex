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

defmodule GoogleApi.OAuth2.V2.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias GoogleApi.OAuth2.V2.Connection
  import GoogleApi.OAuth2.V2.RequestBuilder


  @doc """

  ## Parameters

  - connection (GoogleApi.OAuth2.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.OAuth2.V2.Model.Jwk{}} on success
  {:error, info} on failure
  """
  @spec oauth2_get_cert_for_open_id_connect(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.OAuth2.V2.Model.Jwk.t} | {:error, Tesla.Env.t}
  def oauth2_get_cert_for_open_id_connect(connection, opts \\ []) do
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
    |> url("/oauth2/v2/certs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.OAuth2.V2.Model.Jwk{})
  end

  @doc """

  ## Parameters

  - connection (GoogleApi.OAuth2.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :access_token (String): 
    - :id_token (String): 
    - :token_handle (String): 

  ## Returns

  {:ok, %GoogleApi.OAuth2.V2.Model.Tokeninfo{}} on success
  {:error, info} on failure
  """
  @spec oauth2_tokeninfo(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.OAuth2.V2.Model.Tokeninfo.t} | {:error, Tesla.Env.t}
  def oauth2_tokeninfo(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"access_token" => :query,
      :"id_token" => :query,
      :"token_handle" => :query
    }
    %{}
    |> method(:post)
    |> url("/oauth2/v2/tokeninfo")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.OAuth2.V2.Model.Tokeninfo{})
  end
end

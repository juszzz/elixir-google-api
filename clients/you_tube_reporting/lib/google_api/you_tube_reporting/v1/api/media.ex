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

defmodule GoogleApi.YouTubeReporting.V1.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.YouTubeReporting.V1.Connection
  import GoogleApi.YouTubeReporting.V1.RequestBuilder


  @doc """
  Method for media download. Download is supported on the URI &#x60;/v1/media/{+name}?alt&#x3D;media&#x60;.

  ## Parameters

  - connection (GoogleApi.YouTubeReporting.V1.Connection): Connection to server
  - resource_name (String): Name of the media that is being downloaded.  See ReadRequest.resource_name.
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String): OAuth access token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.YouTubeReporting.V1.Model.Media{}} on success
  {:error, info} on failure
  """
  @spec youtubereporting_media_download(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.YouTubeReporting.V1.Model.Media.t} | {:error, Tesla.Env.t}
  def youtubereporting_media_download(connection, resource_name, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"key" => :query,
      :"access_token" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/media/#{+resource_name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTubeReporting.V1.Model.Media{})
  end
end

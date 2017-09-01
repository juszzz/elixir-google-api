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

defmodule GoogleApi.AdExperienceReport.V1.Api.ViolatingSites do
  @moduledoc """
  API calls for all endpoints tagged `ViolatingSites`.
  """

  alias GoogleApi.AdExperienceReport.V1.Connection
  import GoogleApi.AdExperienceReport.V1.RequestBuilder


  @doc """
  Lists sites with Ad Experience Report statuses of \&quot;Failing\&quot; or \&quot;Warning\&quot;.

  ## Parameters

  - connection (GoogleApi.AdExperienceReport.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :callback (String): JSONP
    - :__/xgafv (String): V1 error format.
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :bearer_token (String): OAuth bearer token.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.AdExperienceReport.V1.Model.ViolatingSitesResponse{}} on success
  {:error, info} on failure
  """
  @spec adexperiencereport_violating_sites_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.AdExperienceReport.V1.Model.ViolatingSitesResponse.t} | {:error, Tesla.Env.t}
  def adexperiencereport_violating_sites_list(connection, opts \\ []) do
    optional_params = %{
      :"uploadType" => :query,
      :"fields" => :query,
      :"callback" => :query,
      :"$.xgafv" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"oauth_token" => :query,
      :"bearer_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/violatingSites")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExperienceReport.V1.Model.ViolatingSitesResponse{})
  end
end

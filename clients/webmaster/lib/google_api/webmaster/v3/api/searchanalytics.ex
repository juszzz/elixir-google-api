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

defmodule GoogleApi.Webmaster.V3.Api.Searchanalytics do
  @moduledoc """
  API calls for all endpoints tagged `Searchanalytics`.
  """

  alias GoogleApi.Webmaster.V3.Connection
  import GoogleApi.Webmaster.V3.RequestBuilder


  @doc """
  Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days.  When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (SearchAnalyticsQueryRequest): 

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.SearchAnalyticsQueryResponse{}} on success
  {:error, info} on failure
  """
  @spec webmasters_searchanalytics_query(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Webmaster.V3.Model.SearchAnalyticsQueryResponse.t} | {:error, Tesla.Env.t}
  def webmasters_searchanalytics_query(connection, site_url, opts \\ []) do
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
    |> url("/sites/#{site_url}/searchAnalytics/query")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Webmaster.V3.Model.SearchAnalyticsQueryResponse{})
  end
end

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

defmodule GoogleApi.Admin.REPORTS_V1.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias GoogleApi.Admin.REPORTS_V1.Connection
  import GoogleApi.Admin.REPORTS_V1.RequestBuilder


  @doc """
  Retrieves a list of activities for a specific customer and application.

  ## Parameters

  - connection (GoogleApi.Admin.REPORTS_V1.Connection): Connection to server
  - user_key (String): Represents the profile id or the user email for which the data should be filtered. When &#39;all&#39; is specified as the userKey, it returns usageReports for all users.
  - application_name (String): Application name for which the events are to be retrieved.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :actor_ip_address (String): IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
    - :customer_id (String): Represents the customer for which the data is to be fetched.
    - :end_time (String): Return events which occurred at or before this time.
    - :event_name (String): Name of the event being queried.
    - :filters (String): Event parameters in the form [parameter1 name][operator][parameter1 value],[parameter2 name][operator][parameter2 value],...
    - :max_results (Integer): Number of activity records to be shown in each page.
    - :page_token (String): Token to specify next page.
    - :start_time (String): Return events which occurred at or after this time.

  ## Returns

  {:ok, %GoogleApi.Admin.REPORTS_V1.Model.Activities{}} on success
  {:error, info} on failure
  """
  @spec reports_activities_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Admin.REPORTS_V1.Model.Activities.t} | {:error, Tesla.Env.t}
  def reports_activities_list(connection, user_key, application_name, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"actorIpAddress" => :query,
      :"customerId" => :query,
      :"endTime" => :query,
      :"eventName" => :query,
      :"filters" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"startTime" => :query
    }
    %{}
    |> method(:get)
    |> url("/activity/users/#{user_key}/applications/#{application_name}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.REPORTS_V1.Model.Activities{})
  end

  @doc """
  Push changes to activities

  ## Parameters

  - connection (GoogleApi.Admin.REPORTS_V1.Connection): Connection to server
  - user_key (String): Represents the profile id or the user email for which the data should be filtered. When &#39;all&#39; is specified as the userKey, it returns usageReports for all users.
  - application_name (String): Application name for which the events are to be retrieved.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :actor_ip_address (String): IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
    - :customer_id (String): Represents the customer for which the data is to be fetched.
    - :end_time (String): Return events which occurred at or before this time.
    - :event_name (String): Name of the event being queried.
    - :filters (String): Event parameters in the form [parameter1 name][operator][parameter1 value],[parameter2 name][operator][parameter2 value],...
    - :max_results (Integer): Number of activity records to be shown in each page.
    - :page_token (String): Token to specify next page.
    - :start_time (String): Return events which occurred at or after this time.
    - :resource (Channel): 

  ## Returns

  {:ok, %GoogleApi.Admin.REPORTS_V1.Model.Channel{}} on success
  {:error, info} on failure
  """
  @spec reports_activities_watch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Admin.REPORTS_V1.Model.Channel.t} | {:error, Tesla.Env.t}
  def reports_activities_watch(connection, user_key, application_name, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"actorIpAddress" => :query,
      :"customerId" => :query,
      :"endTime" => :query,
      :"eventName" => :query,
      :"filters" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"startTime" => :query,
      :"resource" => :body
    }
    %{}
    |> method(:post)
    |> url("/activity/users/#{user_key}/applications/#{application_name}/watch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.REPORTS_V1.Model.Channel{})
  end
end

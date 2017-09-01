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

defmodule GoogleApi.Calendar.V3.Api.Acl do
  @moduledoc """
  API calls for all endpoints tagged `Acl`.
  """

  alias GoogleApi.Calendar.V3.Connection
  import GoogleApi.Calendar.V3.RequestBuilder


  @doc """
  Deletes an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - rule_id (String): ACL rule identifier.
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
  @spec calendar_acl_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def calendar_acl_delete(connection, calendar_id, rule_id, opts \\ []) do
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
    |> url("/calendars/#{calendar_id}/acl/#{rule_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - rule_id (String): ACL rule identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.AclRule.t} | {:error, Tesla.Env.t}
  def calendar_acl_get(connection, calendar_id, rule_id, opts \\ []) do
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
    |> url("/calendars/#{calendar_id}/acl/#{rule_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.AclRule{})
  end

  @doc """
  Creates an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (AclRule): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.AclRule.t} | {:error, Tesla.Env.t}
  def calendar_acl_insert(connection, calendar_id, opts \\ []) do
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
    |> url("/calendars/#{calendar_id}/acl")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.AclRule{})
  end

  @doc """
  Returns the rules in the access control list for the calendar.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    - :page_token (String): Token specifying which result page to return. Optional.
    - :show_deleted (Boolean): Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to \&quot;none\&quot;. Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
    - :sync_token (String): Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.Acl{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.Acl.t} | {:error, Tesla.Env.t}
  def calendar_acl_list(connection, calendar_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"showDeleted" => :query,
      :"syncToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/calendars/#{calendar_id}/acl")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.Acl{})
  end

  @doc """
  Updates an access control rule. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - rule_id (String): ACL rule identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (AclRule): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.AclRule.t} | {:error, Tesla.Env.t}
  def calendar_acl_patch(connection, calendar_id, rule_id, opts \\ []) do
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
    |> url("/calendars/#{calendar_id}/acl/#{rule_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.AclRule{})
  end

  @doc """
  Updates an access control rule.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - rule_id (String): ACL rule identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (AclRule): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.AclRule{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.AclRule.t} | {:error, Tesla.Env.t}
  def calendar_acl_update(connection, calendar_id, rule_id, opts \\ []) do
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
    |> url("/calendars/#{calendar_id}/acl/#{rule_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.AclRule{})
  end

  @doc """
  Watch for changes to ACL resources.

  ## Parameters

  - connection (GoogleApi.Calendar.V3.Connection): Connection to server
  - calendar_id (String): Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \&quot;primary\&quot; keyword.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.
    - :page_token (String): Token specifying which result page to return. Optional.
    - :show_deleted (Boolean): Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to \&quot;none\&quot;. Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.
    - :sync_token (String): Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False. If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken. Learn more about incremental synchronization. Optional. The default is to return all entries.
    - :resource (Channel): 

  ## Returns

  {:ok, %GoogleApi.Calendar.V3.Model.Channel{}} on success
  {:error, info} on failure
  """
  @spec calendar_acl_watch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Calendar.V3.Model.Channel.t} | {:error, Tesla.Env.t}
  def calendar_acl_watch(connection, calendar_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"showDeleted" => :query,
      :"syncToken" => :query,
      :"resource" => :body
    }
    %{}
    |> method(:post)
    |> url("/calendars/#{calendar_id}/acl/watch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Calendar.V3.Model.Channel{})
  end
end

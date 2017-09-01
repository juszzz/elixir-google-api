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

defmodule GoogleApi.Drive.V3.Api.Replies do
  @moduledoc """
  API calls for all endpoints tagged `Replies`.
  """

  alias GoogleApi.Drive.V3.Connection
  import GoogleApi.Drive.V3.RequestBuilder


  @doc """
  Creates a new reply to a comment.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String): The ID of the file.
  - comment_id (String): The ID of the comment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Reply): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Reply{}} on success
  {:error, info} on failure
  """
  @spec drive_replies_create(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.Reply.t} | {:error, Tesla.Env.t}
  def drive_replies_create(connection, file_id, comment_id, opts \\ []) do
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
    |> url("/files/#{file_id}/comments/#{comment_id}/replies")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Reply{})
  end

  @doc """
  Deletes a reply.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String): The ID of the file.
  - comment_id (String): The ID of the comment.
  - reply_id (String): The ID of the reply.
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
  @spec drive_replies_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_replies_delete(connection, file_id, comment_id, reply_id, opts \\ []) do
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
    |> url("/files/#{file_id}/comments/#{comment_id}/replies/#{reply_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a reply by ID.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String): The ID of the file.
  - comment_id (String): The ID of the comment.
  - reply_id (String): The ID of the reply.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :include_deleted (Boolean): Whether to return deleted replies. Deleted replies will not include their original content.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Reply{}} on success
  {:error, info} on failure
  """
  @spec drive_replies_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.Reply.t} | {:error, Tesla.Env.t}
  def drive_replies_get(connection, file_id, comment_id, reply_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"includeDeleted" => :query
    }
    %{}
    |> method(:get)
    |> url("/files/#{file_id}/comments/#{comment_id}/replies/#{reply_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Reply{})
  end

  @doc """
  Lists a comment&#39;s replies.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String): The ID of the file.
  - comment_id (String): The ID of the comment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :include_deleted (Boolean): Whether to include deleted replies. Deleted replies will not include their original content.
    - :page_size (Integer): The maximum number of replies to return per page.
    - :page_token (String): The token for continuing a previous list request on the next page. This should be set to the value of &#39;nextPageToken&#39; from the previous response.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.ReplyList{}} on success
  {:error, info} on failure
  """
  @spec drive_replies_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.ReplyList.t} | {:error, Tesla.Env.t}
  def drive_replies_list(connection, file_id, comment_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"includeDeleted" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/files/#{file_id}/comments/#{comment_id}/replies")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.ReplyList{})
  end

  @doc """
  Updates a reply with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String): The ID of the file.
  - comment_id (String): The ID of the comment.
  - reply_id (String): The ID of the reply.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Reply): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Reply{}} on success
  {:error, info} on failure
  """
  @spec drive_replies_update(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.Reply.t} | {:error, Tesla.Env.t}
  def drive_replies_update(connection, file_id, comment_id, reply_id, opts \\ []) do
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
    |> url("/files/#{file_id}/comments/#{comment_id}/replies/#{reply_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Reply{})
  end
end
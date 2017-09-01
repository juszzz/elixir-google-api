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

defmodule GoogleApi.PlusDomains.V1.Api.Comments do
  @moduledoc """
  API calls for all endpoints tagged `Comments`.
  """

  alias GoogleApi.PlusDomains.V1.Connection
  import GoogleApi.PlusDomains.V1.RequestBuilder


  @doc """
  Get a comment.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - comment_id (String): The ID of the comment to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_comments_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.PlusDomains.V1.Model.Comment.t} | {:error, Tesla.Env.t}
  def plus_domains_comments_get(connection, comment_id, opts \\ []) do
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
    |> url("/comments/#{comment_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.PlusDomains.V1.Model.Comment{})
  end

  @doc """
  Create a new comment in reply to an activity.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - activity_id (String): The ID of the activity to reply to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Comment): 

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_comments_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.PlusDomains.V1.Model.Comment.t} | {:error, Tesla.Env.t}
  def plus_domains_comments_insert(connection, activity_id, opts \\ []) do
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
    |> url("/activities/#{activity_id}/comments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.PlusDomains.V1.Model.Comment{})
  end

  @doc """
  List all of the comments for an activity.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - activity_id (String): The ID of the activity to get comments for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maximum number of comments to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    - :page_token (String): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.
    - :sort_order (String): The order in which to sort the list of comments.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.CommentFeed{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_comments_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.PlusDomains.V1.Model.CommentFeed.t} | {:error, Tesla.Env.t}
  def plus_domains_comments_list(connection, activity_id, opts \\ []) do
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
      :"sortOrder" => :query
    }
    %{}
    |> method(:get)
    |> url("/activities/#{activity_id}/comments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.PlusDomains.V1.Model.CommentFeed{})
  end
end
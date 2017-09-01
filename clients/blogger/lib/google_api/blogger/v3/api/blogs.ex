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

defmodule GoogleApi.Blogger.V3.Api.Blogs do
  @moduledoc """
  API calls for all endpoints tagged `Blogs`.
  """

  alias GoogleApi.Blogger.V3.Connection
  import GoogleApi.Blogger.V3.RequestBuilder


  @doc """
  Gets one blog by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String): The ID of the blog to get.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_posts (Integer): Maximum number of posts to pull back with the blog.
    - :view (String): Access level with which to view the blog. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Blog{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Blog.t} | {:error, Tesla.Env.t}
  def blogger_blogs_get(connection, blog_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxPosts" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/#{blog_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Blog{})
  end

  @doc """
  Retrieve a Blog by URL.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - url (String): The URL of the blog to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :view (String): Access level with which to view the blog. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Blog{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_get_by_url(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.Blog.t} | {:error, Tesla.Env.t}
  def blogger_blogs_get_by_url(connection, url, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/blogs/byurl")
    |> add_param(:query, :"url", url)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.Blog{})
  end

  @doc """
  Retrieves a list of blogs, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - user_id (String): ID of the user whose blogs are to be fetched. Either the word &#39;self&#39; (sans quote marks) or the user&#39;s profile identifier.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :fetch_user_info (Boolean): Whether the response is a list of blogs with per-user information instead of just blogs.
    - :role (List[String]): User access types for blogs to include in the results, e.g. AUTHOR will return blogs where the user has author level access. If no roles are specified, defaults to ADMIN and AUTHOR roles.
    - :status (List[String]): Blog statuses to include in the result (default: Live blogs only). Note that ADMIN access is required to view deleted blogs.
    - :view (String): Access level with which to view the blogs. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.BlogList{}} on success
  {:error, info} on failure
  """
  @spec blogger_blogs_list_by_user(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Blogger.V3.Model.BlogList.t} | {:error, Tesla.Env.t}
  def blogger_blogs_list_by_user(connection, user_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"fetchUserInfo" => :query,
      :"role" => :query,
      :"status" => :query,
      :"view" => :query
    }
    %{}
    |> method(:get)
    |> url("/users/#{user_id}/blogs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Blogger.V3.Model.BlogList{})
  end
end

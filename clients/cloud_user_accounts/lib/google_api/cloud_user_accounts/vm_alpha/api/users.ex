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

defmodule GoogleApi.CloudUserAccounts.VM_ALPHA.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.CloudUserAccounts.VM_ALPHA.Connection
  import GoogleApi.CloudUserAccounts.VM_ALPHA.RequestBuilder


  @doc """
  Adds a public key to the specified User resource with the data included in the request.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - user (String): Name of the user for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (PublicKey): 

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_add_public_key(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_add_public_key(connection, project, user, opts \\ []) do
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
    |> url("/#{project}/global/users/#{user}/addPublicKey")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{})
  end

  @doc """
  Deletes the specified User resource.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - user (String): Name of the user resource to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_delete(connection, project, user, opts \\ []) do
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
    |> url("/#{project}/global/users/#{user}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{})
  end

  @doc """
  Returns the specified User resource.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - user (String): Name of the user resource to return.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.User{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.User.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_get(connection, project, user, opts \\ []) do
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
    |> url("/#{project}/global/users/#{user}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.User{})
  end

  @doc """
  Gets the access control policy for a resource. May be empty if no such policy or resource exists.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_get_iam_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_get_iam_policy(connection, project, resource, opts \\ []) do
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
    |> url("/#{project}/global/users/#{resource}/getIamPolicy")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy{})
  end

  @doc """
  Creates a User resource in the specified project using the data included in the request.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (User): 

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_insert(connection, project, opts \\ []) do
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
    |> url("/#{project}/global/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{})
  end

  @doc """
  Retrieves a list of users contained within the specified project.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :filter (String): Sets a filter expression for filtering listed resources, in the form filter&#x3D;{expression}. Your {expression} must be in the format: field_name comparison_string literal_string.  The field_name is the name of the field you want to compare. Only atomic field types are supported (string, number, boolean). The comparison_string must be either eq (equals) or ne (not equals). The literal_string is the string value to filter to. The literal value must be valid for the type of field you are filtering by (string, number, boolean). For string fields, the literal value is interpreted as a regular expression using RE2 syntax. The literal value must match the entire field.  For example, to filter for instances that do not have a name of example-instance, you would use filter&#x3D;name ne example-instance.  Compute Engine Beta API Only: If you use filtering in the Beta API, you can also filter on nested fields. For example, you could filter on instances that have set the scheduling.automaticRestart field to true. In particular, use filtering on nested fields to take advantage of instance labels to organize and filter results based on label values.  The Beta API also supports filtering on multiple expressions by providing each separate expression within parentheses. For example, (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are treated as AND expressions, meaning that resources must match all expressions to pass the filters.
    - :max_results (Integer): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests.
    - :order_by (String): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.  You can also sort results in descending order based on the creation timestamp using orderBy&#x3D;\&quot;creationTimestamp desc\&quot;. This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.  Currently, only sorting by name or creationTimestamp desc is supported.
    - :page_token (String): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.UserList{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.UserList.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"filter" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{project}/global/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.UserList{})
  end

  @doc """
  Removes the specified public key from the user.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - user (String): Name of the user for this request.
  - fingerprint (String): The fingerprint of the public key to delete. Public keys are identified by their fingerprint, which is defined by RFC4716 to be the MD5 digest of the public key.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_remove_public_key(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_remove_public_key(connection, project, user, fingerprint, opts \\ []) do
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
    |> method(:post)
    |> url("/#{project}/global/users/#{user}/removePublicKey")
    |> add_param(:query, :"fingerprint", fingerprint)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Operation{})
  end

  @doc """
  Sets the access control policy on the specified resource. Replaces any existing policy.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Policy): 

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_set_iam_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_set_iam_policy(connection, project, resource, opts \\ []) do
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
    |> url("/#{project}/global/users/#{resource}/setIamPolicy")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.Policy{})
  end

  @doc """
  Returns permissions that a caller has on the specified resource.

  ## Parameters

  - connection (GoogleApi.CloudUserAccounts.VM_ALPHA.Connection): Connection to server
  - project (String): Project ID for this request.
  - resource (String): Name of the resource for this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TestPermissionsRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudUserAccounts.VM_ALPHA.Model.TestPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec clouduseraccounts_users_test_iam_permissions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.CloudUserAccounts.VM_ALPHA.Model.TestPermissionsResponse.t} | {:error, Tesla.Env.t}
  def clouduseraccounts_users_test_iam_permissions(connection, project, resource, opts \\ []) do
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
    |> url("/#{project}/global/users/#{resource}/testIamPermissions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.CloudUserAccounts.VM_ALPHA.Model.TestPermissionsResponse{})
  end
end

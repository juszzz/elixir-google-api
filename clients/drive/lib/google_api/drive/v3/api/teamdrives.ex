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

defmodule GoogleApi.Drive.V3.Api.Teamdrives do
  @moduledoc """
  API calls for all endpoints tagged `Teamdrives`.
  """

  alias GoogleApi.Drive.V3.Connection
  import GoogleApi.Drive.V3.RequestBuilder


  @doc """
  Creates a new Team Drive.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - request_id (String): An ID, such as a random UUID, which uniquely identifies this user&#39;s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TeamDrive): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.TeamDrive{}} on success
  {:error, info} on failure
  """
  @spec drive_teamdrives_create(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.TeamDrive.t} | {:error, Tesla.Env.t}
  def drive_teamdrives_create(connection, request_id, opts \\ []) do
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
    |> url("/teamdrives")
    |> add_param(:query, :"requestId", request_id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.TeamDrive{})
  end

  @doc """
  Permanently deletes a Team Drive for which the user is an organizer. The Team Drive cannot contain any untrashed items.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - team_drive_id (String): The ID of the Team Drive
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
  @spec drive_teamdrives_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_teamdrives_delete(connection, team_drive_id, opts \\ []) do
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
    |> url("/teamdrives/#{team_drive_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a Team Drive&#39;s metadata by ID.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - team_drive_id (String): The ID of the Team Drive
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.TeamDrive{}} on success
  {:error, info} on failure
  """
  @spec drive_teamdrives_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.TeamDrive.t} | {:error, Tesla.Env.t}
  def drive_teamdrives_get(connection, team_drive_id, opts \\ []) do
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
    |> url("/teamdrives/#{team_drive_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.TeamDrive{})
  end

  @doc """
  Lists the user&#39;s Team Drives.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :page_size (Integer): Maximum number of Team Drives to return.
    - :page_token (String): Page token for Team Drives.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.TeamDriveList{}} on success
  {:error, info} on failure
  """
  @spec drive_teamdrives_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.TeamDriveList.t} | {:error, Tesla.Env.t}
  def drive_teamdrives_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/teamdrives")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.TeamDriveList{})
  end

  @doc """
  Updates a Team Drive&#39;s metadata

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - team_drive_id (String): The ID of the Team Drive
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (TeamDrive): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.TeamDrive{}} on success
  {:error, info} on failure
  """
  @spec drive_teamdrives_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.TeamDrive.t} | {:error, Tesla.Env.t}
  def drive_teamdrives_update(connection, team_drive_id, opts \\ []) do
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
    |> url("/teamdrives/#{team_drive_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.TeamDrive{})
  end
end

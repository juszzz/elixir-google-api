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

defmodule GoogleApi.Fitness.V1.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.Fitness.V1.Connection
  import GoogleApi.Fitness.V1.RequestBuilder


  @doc """
  Creates a new data source that is unique across all data sources belonging to this user. The data stream ID field can be omitted and will be generated by the server with the correct format. The data stream ID is an ordered combination of some fields from the data source. In addition to the data source fields reflected into the data source ID, the developer project number that is authenticated when creating the data source is included. This developer project number is obfuscated when read by any other developer reading public data types.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Create the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DataSource): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.DataSource{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_create(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.DataSource.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_create(connection, user_id, opts \\ []) do
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
    |> url("/#{user_id}/dataSources")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.DataSource{})
  end

  @doc """
  Performs an inclusive delete of all data points whose start and end times have any overlap with the time range specified by the dataset ID. For most data types, the entire data point will be deleted. For data types where the time span represents a consistent value (such as com.google.activity.segment), and a data point straddles either end point of the dataset, only the overlapping portion of the data point will be deleted.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Delete a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source that created the dataset.
  - dataset_id (String): Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \&quot;startTime-endTime\&quot; where startTime and endTime are 64 bit integers.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :current_time_millis (String): The client&#39;s current time in milliseconds since epoch.
    - :modified_time_millis (String): When the operation was performed on the client.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_datasets_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_datasets_delete(connection, user_id, data_source_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"currentTimeMillis" => :query,
      :"modifiedTimeMillis" => :query
    }
    %{}
    |> method(:delete)
    |> url("/#{user_id}/dataSources/#{data_source_id}/datasets/#{dataset_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns a dataset containing all data points whose start and end times overlap with the specified range of the dataset minimum start time and maximum end time. Specifically, any data point whose start time is less than or equal to the dataset end time and whose end time is greater than or equal to the dataset start time.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Retrieve a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source that created the dataset.
  - dataset_id (String): Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \&quot;startTime-endTime\&quot; where startTime and endTime are 64 bit integers.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :limit (Integer): If specified, no more than this many data points will be included in the dataset. If there are more data points in the dataset, nextPageToken will be set in the dataset response.
    - :page_token (String): The continuation token, which is used to page through large datasets. To get the next page of a dataset, set this parameter to the value of nextPageToken from the previous response. Each subsequent call will yield a partial dataset with data point end timestamps that are strictly smaller than those in the previous partial response.

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_datasets_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.Dataset.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_datasets_get(connection, user_id, data_source_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"limit" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{user_id}/dataSources/#{data_source_id}/datasets/#{dataset_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.Dataset{})
  end

  @doc """
  Adds data points to a dataset. The dataset need not be previously created. All points within the given dataset will be returned with subsquent calls to retrieve this dataset. Data points can belong to more than one dataset. This method does not use patch semantics.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Patch a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source that created the dataset.
  - dataset_id (String): Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \&quot;startTime-endTime\&quot; where startTime and endTime are 64 bit integers.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :current_time_millis (String): The client&#39;s current time in milliseconds since epoch. Note that the minStartTimeNs and maxEndTimeNs properties in the request body are in nanoseconds instead of milliseconds.
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_datasets_patch(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.Dataset.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_datasets_patch(connection, user_id, data_source_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"currentTimeMillis" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/#{user_id}/dataSources/#{data_source_id}/datasets/#{dataset_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.Dataset{})
  end

  @doc """
  Deletes the specified data source. The request will fail if the data source contains any data points.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.DataSource{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.DataSource.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_delete(connection, user_id, data_source_id, opts \\ []) do
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
    |> url("/#{user_id}/dataSources/#{data_source_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.DataSource{})
  end

  @doc """
  Returns the specified data source.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.DataSource{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.DataSource.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_get(connection, user_id, data_source_id, opts \\ []) do
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
    |> url("/#{user_id}/dataSources/#{data_source_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.DataSource{})
  end

  @doc """
  Lists all data sources that are visible to the developer, using the OAuth scopes provided. The list is not exhaustive; the user may have private data sources that are only visible to other developers, or calls using other scopes.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): List data sources for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :data_type_name (List[String]): The names of data types to include in the list. If not specified, all data sources will be returned.

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.ListDataSourcesResponse{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.ListDataSourcesResponse.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_list(connection, user_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"dataTypeName" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{user_id}/dataSources")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.ListDataSourcesResponse{})
  end

  @doc """
  Updates the specified data source. The dataStreamId, dataType, type, dataStreamName, and device properties with the exception of version, cannot be modified.  Data sources are identified by their dataStreamId. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Update the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source to update.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DataSource): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.DataSource{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.DataSource.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_patch(connection, user_id, data_source_id, opts \\ []) do
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
    |> url("/#{user_id}/dataSources/#{data_source_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.DataSource{})
  end

  @doc """
  Updates the specified data source. The dataStreamId, dataType, type, dataStreamName, and device properties with the exception of version, cannot be modified.  Data sources are identified by their dataStreamId.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Update the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - data_source_id (String): The data stream ID of the data source to update.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DataSource): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.DataSource{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_data_sources_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.DataSource.t} | {:error, Tesla.Env.t}
  def fitness_users_data_sources_update(connection, user_id, data_source_id, opts \\ []) do
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
    |> url("/#{user_id}/dataSources/#{data_source_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.DataSource{})
  end

  @doc """
  Aggregates data of a certain type or stream into buckets divided by a given type of boundary. Multiple data sets of multiple types and from multiple sources can be aggreated into exactly one bucket type per request.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Aggregate data for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (AggregateRequest): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.AggregateResponse{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_dataset_aggregate(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.AggregateResponse.t} | {:error, Tesla.Env.t}
  def fitness_users_dataset_aggregate(connection, user_id, opts \\ []) do
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
    |> url("/#{user_id}/dataset:aggregate")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.AggregateResponse{})
  end

  @doc """
  Deletes a session specified by the given session ID.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Delete a session for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - session_id (String): The ID of the session to be deleted.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :current_time_millis (String): The client&#39;s current time in milliseconds since epoch.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_sessions_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def fitness_users_sessions_delete(connection, user_id, session_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"currentTimeMillis" => :query
    }
    %{}
    |> method(:delete)
    |> url("/#{user_id}/sessions/#{session_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Lists sessions previously created.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): List sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :end_time (String): An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response.
    - :include_deleted (Boolean): If true, deleted sessions will be returned. When set to true, sessions returned in this response will only have an ID and will not have any other fields.
    - :page_token (String): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
    - :start_time (String): An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response.

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.ListSessionsResponse{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_sessions_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.ListSessionsResponse.t} | {:error, Tesla.Env.t}
  def fitness_users_sessions_list(connection, user_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"endTime" => :query,
      :"includeDeleted" => :query,
      :"pageToken" => :query,
      :"startTime" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{user_id}/sessions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.ListSessionsResponse{})
  end

  @doc """
  Updates or insert a given session.

  ## Parameters

  - connection (GoogleApi.Fitness.V1.Connection): Connection to server
  - user_id (String): Create sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
  - session_id (String): The ID of the session to be created.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :current_time_millis (String): The client&#39;s current time in milliseconds since epoch.
    - :body (Session): 

  ## Returns

  {:ok, %GoogleApi.Fitness.V1.Model.Session{}} on success
  {:error, info} on failure
  """
  @spec fitness_users_sessions_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Fitness.V1.Model.Session.t} | {:error, Tesla.Env.t}
  def fitness_users_sessions_update(connection, user_id, session_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"currentTimeMillis" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/#{user_id}/sessions/#{session_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Fitness.V1.Model.Session{})
  end
end

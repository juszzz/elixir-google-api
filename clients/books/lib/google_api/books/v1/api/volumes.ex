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

defmodule GoogleApi.Books.V1.Api.Volumes do
  @moduledoc """
  API calls for all endpoints tagged `Volumes`.
  """

  alias GoogleApi.Books.V1.Connection
  import GoogleApi.Books.V1.RequestBuilder


  @doc """
  Return a list of associated books.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - volume_id (String): ID of the source volume.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :association (String): Association type.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :max_allowed_maturity_rating (String): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :source (String): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_associated_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t} | {:error, Tesla.Env.t}
  def books_volumes_associated_list(connection, volume_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"association" => :query,
      :"locale" => :query,
      :"maxAllowedMaturityRating" => :query,
      :"source" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes/#{volume_id}/associated")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volumes{})
  end

  @doc """
  Gets volume information for a single volume.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - volume_id (String): ID of volume to retrieve.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :country (String): ISO-3166-1 code to override the IP-based location.
    - :include_non_comics_series (Boolean): Set to true to include non-comics series. Defaults to false.
    - :partner (String): Brand results for partner ID.
    - :projection (String): Restrict information returned to a set of selected fields.
    - :source (String): String to identify the originator of this request.
    - :user_library_consistent_read (Boolean): 

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volume{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volume.t} | {:error, Tesla.Env.t}
  def books_volumes_get(connection, volume_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"country" => :query,
      :"includeNonComicsSeries" => :query,
      :"partner" => :query,
      :"projection" => :query,
      :"source" => :query,
      :"user_library_consistent_read" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes/#{volume_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volume{})
  end

  @doc """
  Performs a book search.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - q (String): Full-text search query string.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :download (String): Restrict to volumes by download availability.
    - :filter (String): Filter search results.
    - :lang_restrict (String): Restrict results to books with this language code.
    - :library_restrict (String): Restrict search to this user&#39;s library.
    - :max_allowed_maturity_rating (String): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :max_results (Integer): Maximum number of results to return.
    - :order_by (String): Sort search results.
    - :partner (String): Restrict and brand results for partner ID.
    - :print_type (String): Restrict to books or magazines.
    - :projection (String): Restrict information returned to a set of selected fields.
    - :show_preorders (Boolean): Set to true to show books available for preorder. Defaults to false.
    - :source (String): String to identify the originator of this request.
    - :start_index (Integer): Index of the first result to return (starts at 0)

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t} | {:error, Tesla.Env.t}
  def books_volumes_list(connection, q, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"download" => :query,
      :"filter" => :query,
      :"langRestrict" => :query,
      :"libraryRestrict" => :query,
      :"maxAllowedMaturityRating" => :query,
      :"maxResults" => :query,
      :"orderBy" => :query,
      :"partner" => :query,
      :"printType" => :query,
      :"projection" => :query,
      :"showPreorders" => :query,
      :"source" => :query,
      :"startIndex" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes")
    |> add_param(:query, :"q", q)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volumes{})
  end

  @doc """
  Return a list of books in My Library.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :acquire_method (List[String]): How the book was acquired
    - :country (String): ISO-3166-1 code to override the IP-based location.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex:&#39;en_US&#39;. Used for generating recommendations.
    - :max_results (Integer): Maximum number of results to return.
    - :processing_state (List[String]): The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
    - :source (String): String to identify the originator of this request.
    - :start_index (Integer): Index of the first result to return (starts at 0)

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_mybooks_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t} | {:error, Tesla.Env.t}
  def books_volumes_mybooks_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"acquireMethod" => :query,
      :"country" => :query,
      :"locale" => :query,
      :"maxResults" => :query,
      :"processingState" => :query,
      :"source" => :query,
      :"startIndex" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes/mybooks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volumes{})
  end

  @doc """
  Return a list of recommended books for the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :max_allowed_maturity_rating (String): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :source (String): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_recommended_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t} | {:error, Tesla.Env.t}
  def books_volumes_recommended_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"locale" => :query,
      :"maxAllowedMaturityRating" => :query,
      :"source" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes/recommended")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volumes{})
  end

  @doc """
  Rate a recommended book for the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - rating (String): Rating to be given to the volume.
  - volume_id (String): ID of the source volume.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :source (String): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_recommended_rate(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse.t} | {:error, Tesla.Env.t}
  def books_volumes_recommended_rate(connection, rating, volume_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"locale" => :query,
      :"source" => :query
    }
    %{}
    |> method(:post)
    |> url("/volumes/recommended/rate")
    |> add_param(:query, :"rating", rating)
    |> add_param(:query, :"volumeId", volume_id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{})
  end

  @doc """
  Return a list of books uploaded by the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :max_results (Integer): Maximum number of results to return.
    - :processing_state (List[String]): The processing state of the user uploaded volumes to be returned.
    - :source (String): String to identify the originator of this request.
    - :start_index (Integer): Index of the first result to return (starts at 0)
    - :volume_id (List[String]): The ids of the volumes to be returned. If not specified all that match the processingState are returned.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_useruploaded_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t} | {:error, Tesla.Env.t}
  def books_volumes_useruploaded_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"locale" => :query,
      :"maxResults" => :query,
      :"processingState" => :query,
      :"source" => :query,
      :"startIndex" => :query,
      :"volumeId" => :query
    }
    %{}
    |> method(:get)
    |> url("/volumes/useruploaded")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volumes{})
  end
end

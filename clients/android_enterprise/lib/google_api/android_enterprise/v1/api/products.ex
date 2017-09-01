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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Products do
  @moduledoc """
  API calls for all endpoints tagged `Products`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Approves the specified product and the relevant app permissions, if any. The maximum number of products that you can approve per enterprise customer is 1,000.  To learn how to use managed Google Play to design and create a store layout to display approved products to your users, see Store Layout Design.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (ProductsApproveRequest): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_approve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_products_approve(connection, enterprise_id, product_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}/approve")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Generates a URL that can be rendered in an iframe to display the permissions (if any) of a product. An enterprise admin must view these permissions and accept them on behalf of their organization in order to approve that product.  Admins should accept the displayed permissions by interacting with a separate UI element in the EMM console, which in turn should trigger the use of this URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to approve the product. This URL can only be used to display permissions for up to 1 day.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :language_code (String): The BCP 47 language code used for permission names and descriptions in the returned iframe, for instance \&quot;en-US\&quot;.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_generate_approval_url(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_products_generate_approval_url(connection, enterprise_id, product_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"languageCode" => :query
    }
    %{}
    |> method(:post)
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}/generateApprovalUrl")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ProductsGenerateApprovalUrlResponse{})
  end

  @doc """
  Retrieves details of a product for display to an enterprise admin.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product, e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :language (String): The BCP47 tag for the user&#39;s preferred language (e.g. \&quot;en-US\&quot;, \&quot;de\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Product{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Product.t} | {:error, Tesla.Env.t}
  def androidenterprise_products_get(connection, enterprise_id, product_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"language" => :query
    }
    %{}
    |> method(:get)
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Product{})
  end

  @doc """
  Retrieves the schema that defines the configurable properties for this product. All products have a schema, but this schema may be empty if no managed configurations have been defined. This schema can be used to populate a UI that allows an admin to configure the product. To apply a managed configuration based on the schema obtained using this API, see Managed Configurations through Play.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :language (String): The BCP47 tag for the user&#39;s preferred language (e.g. \&quot;en-US\&quot;, \&quot;de\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchema{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_get_app_restrictions_schema(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchema.t} | {:error, Tesla.Env.t}
  def androidenterprise_products_get_app_restrictions_schema(connection, enterprise_id, product_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"language" => :query
    }
    %{}
    |> method(:get)
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}/appRestrictionsSchema")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchema{})
  end

  @doc """
  Retrieves the Android app permissions required by this app.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_get_permissions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions.t} | {:error, Tesla.Env.t}
  def androidenterprise_products_get_permissions(connection, enterprise_id, product_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}/permissions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ProductPermissions{})
  end

  @doc """
  Finds approved products that match a query, or all approved products if there is no query.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :approved (Boolean): Specifies whether to search among all products (false) or among only products that have been approved (true). Only \&quot;true\&quot; is supported, and should be specified.
    - :language (String): The BCP47 tag for the user&#39;s preferred language (e.g. \&quot;en-US\&quot;, \&quot;de\&quot;). Results are returned in the language best matching the preferred language.
    - :max_results (Integer): Specifies the maximum number of products that can be returned per request. If not specified, uses a default value of 100, which is also the maximum retrievable within a single response.
    - :query (String): The search query as typed in the Google Play store search box. If omitted, all approved apps will be returned (using the pagination parameters), including apps that are not available in the store (e.g. unpublished apps).
    - :token (String): A pagination token is contained in a request&#39;&#39;s response when there are more products. The token can be used in a subsequent request to obtain more products, and so forth. This parameter cannot be used in the initial request.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.ProductsListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_products_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.ProductsListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_products_list(connection, enterprise_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"approved" => :query,
      :"language" => :query,
      :"maxResults" => :query,
      :"query" => :query,
      :"token" => :query
    }
    %{}
    |> method(:get)
    |> url("/enterprises/#{enterprise_id}/products")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.ProductsListResponse{})
  end

  @doc """
  Unapproves the specified product (and the relevant app permissions, if any)

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - product_id (String): The ID of the product.
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
  @spec androidenterprise_products_unapprove(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_products_unapprove(connection, enterprise_id, product_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/products/#{product_id}/unapprove")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end

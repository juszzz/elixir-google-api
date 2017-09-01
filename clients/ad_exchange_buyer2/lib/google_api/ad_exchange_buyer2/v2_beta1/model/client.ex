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

defmodule GoogleApi.AdExchangeBuyer2.V2BETA1.Model.Client do
  @moduledoc """
  A client resource represents a client buyer&amp;mdash;an agency, a brand, or an advertiser customer of the sponsor buyer. Users associated with the client buyer have restricted access to the Ad Exchange Marketplace and certain other sections of the Ad Exchange Buyer UI based on the role granted to the client buyer. All fields are required unless otherwise specified.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"clientAccountId",
    :"clientName",
    :"entityId",
    :"entityName",
    :"entityType",
    :"role",
    :"status",
    :"visibleToSeller"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer2.V2BETA1.Model.Client do
  import GoogleApi.AdExchangeBuyer2.V2BETA1.Deserializer
  def decode(value, options) do
    value
  end
end



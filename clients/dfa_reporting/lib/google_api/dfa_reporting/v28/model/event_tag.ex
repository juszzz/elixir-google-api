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

defmodule GoogleApi.DFAReporting.V28.Model.EventTag do
  @moduledoc """
  Contains properties of an event tag.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accountId",
    :"advertiserId",
    :"advertiserIdDimensionValue",
    :"campaignId",
    :"campaignIdDimensionValue",
    :"enabledByDefault",
    :"excludeFromAdxRequests",
    :"id",
    :"kind",
    :"name",
    :"siteFilterType",
    :"siteIds",
    :"sslCompliant",
    :"status",
    :"subaccountId",
    :"type",
    :"url",
    :"urlEscapeLevels"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.EventTag do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"advertiserIdDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"campaignIdDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
  end
end



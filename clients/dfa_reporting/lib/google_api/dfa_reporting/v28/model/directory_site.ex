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

defmodule GoogleApi.DFAReporting.V28.Model.DirectorySite do
  @moduledoc """
  DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"active",
    :"contactAssignments",
    :"countryId",
    :"currencyId",
    :"description",
    :"id",
    :"idDimensionValue",
    :"inpageTagFormats",
    :"interstitialTagFormats",
    :"kind",
    :"name",
    :"parentId",
    :"settings",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.DirectorySite do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"contactAssignments", :list, GoogleApi.DFAReporting.V28.Model.DirectorySiteContactAssignment, options)
    |> deserialize(:"idDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"settings", :struct, GoogleApi.DFAReporting.V28.Model.DirectorySiteSettings, options)
  end
end


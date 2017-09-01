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

defmodule GoogleApi.Sheets.V4.Model.BasicChartSpec do
  @moduledoc """
  The specification for a basic chart.  See BasicChartType for the list of charts this supports.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"axis",
    :"chartType",
    :"domains",
    :"headerCount",
    :"interpolateNulls",
    :"legendPosition",
    :"lineSmoothing",
    :"series",
    :"stackedType",
    :"threeDimensional"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicChartSpec do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"axis", :list, GoogleApi.Sheets.V4.Model.BasicChartAxis, options)
    |> deserialize(:"domains", :list, GoogleApi.Sheets.V4.Model.BasicChartDomain, options)
    |> deserialize(:"series", :list, GoogleApi.Sheets.V4.Model.BasicChartSeries, options)
  end
end



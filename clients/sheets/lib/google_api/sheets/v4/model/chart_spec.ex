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

defmodule GoogleApi.Sheets.V4.Model.ChartSpec do
  @moduledoc """
  The specifications of a chart.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"altText",
    :"backgroundColor",
    :"basicChart",
    :"bubbleChart",
    :"candlestickChart",
    :"fontName",
    :"hiddenDimensionStrategy",
    :"histogramChart",
    :"maximized",
    :"orgChart",
    :"pieChart",
    :"title",
    :"titleTextFormat"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartSpec do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"backgroundColor", :struct, GoogleApi.Sheets.V4.Model.Color, options)
    |> deserialize(:"basicChart", :struct, GoogleApi.Sheets.V4.Model.BasicChartSpec, options)
    |> deserialize(:"bubbleChart", :struct, GoogleApi.Sheets.V4.Model.BubbleChartSpec, options)
    |> deserialize(:"candlestickChart", :struct, GoogleApi.Sheets.V4.Model.CandlestickChartSpec, options)
    |> deserialize(:"histogramChart", :struct, GoogleApi.Sheets.V4.Model.HistogramChartSpec, options)
    |> deserialize(:"orgChart", :struct, GoogleApi.Sheets.V4.Model.OrgChartSpec, options)
    |> deserialize(:"pieChart", :struct, GoogleApi.Sheets.V4.Model.PieChartSpec, options)
    |> deserialize(:"titleTextFormat", :struct, GoogleApi.Sheets.V4.Model.TextFormat, options)
  end
end



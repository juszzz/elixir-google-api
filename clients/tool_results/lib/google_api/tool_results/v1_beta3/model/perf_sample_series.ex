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

defmodule GoogleApi.ToolResults.V1BETA3.Model.PerfSampleSeries do
  @moduledoc """
  Resource representing a collection of performance samples (or data points)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"basicPerfSampleSeries",
    :"executionId",
    :"historyId",
    :"projectId",
    :"sampleSeriesId",
    :"stepId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1BETA3.Model.PerfSampleSeries do
  import GoogleApi.ToolResults.V1BETA3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"basicPerfSampleSeries", :struct, GoogleApi.ToolResults.V1BETA3.Model.BasicPerfSampleSeries, options)
  end
end



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

defmodule GoogleApi.DoubleClickSearch.V2.Model.Report do
  @moduledoc """
  A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"files",
    :"id",
    :"isReportReady",
    :"kind",
    :"request",
    :"rowCount",
    :"rows",
    :"statisticsCurrencyCode",
    :"statisticsTimeZone"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Report do
  import GoogleApi.DoubleClickSearch.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"files", :list, GoogleApi.DoubleClickSearch.V2.Model.Report_files, options)
    |> deserialize(:"request", :struct, GoogleApi.DoubleClickSearch.V2.Model.ReportRequest, options)
    |> deserialize(:"rows", :list, GoogleApi.DoubleClickSearch.V2.Model.ReportRow, options)
  end
end



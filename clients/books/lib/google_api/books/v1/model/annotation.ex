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

defmodule GoogleApi.Books.V1.Model.Annotation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"afterSelectedText",
    :"beforeSelectedText",
    :"clientVersionRanges",
    :"created",
    :"currentVersionRanges",
    :"data",
    :"deleted",
    :"highlightStyle",
    :"id",
    :"kind",
    :"layerId",
    :"layerSummary",
    :"pageIds",
    :"selectedText",
    :"selfLink",
    :"updated",
    :"volumeId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Annotation do
  import GoogleApi.Books.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"clientVersionRanges", :struct, GoogleApi.Books.V1.Model.Annotation_clientVersionRanges, options)
    |> deserialize(:"currentVersionRanges", :struct, GoogleApi.Books.V1.Model.Annotation_currentVersionRanges, options)
    |> deserialize(:"layerSummary", :struct, GoogleApi.Books.V1.Model.Annotation_layerSummary, options)
  end
end



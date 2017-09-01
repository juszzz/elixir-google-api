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

defmodule GoogleApi.Slides.V1.Model.PageElement do
  @moduledoc """
  A visual element rendered on a page.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"elementGroup",
    :"image",
    :"line",
    :"objectId",
    :"shape",
    :"sheetsChart",
    :"size",
    :"table",
    :"title",
    :"transform",
    :"video",
    :"wordArt"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.PageElement do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"elementGroup", :struct, GoogleApi.Slides.V1.Model.Group, options)
    |> deserialize(:"image", :struct, GoogleApi.Slides.V1.Model.Image, options)
    |> deserialize(:"line", :struct, GoogleApi.Slides.V1.Model.Line, options)
    |> deserialize(:"shape", :struct, GoogleApi.Slides.V1.Model.Shape, options)
    |> deserialize(:"sheetsChart", :struct, GoogleApi.Slides.V1.Model.SheetsChart, options)
    |> deserialize(:"size", :struct, GoogleApi.Slides.V1.Model.Size, options)
    |> deserialize(:"table", :struct, GoogleApi.Slides.V1.Model.Table, options)
    |> deserialize(:"transform", :struct, GoogleApi.Slides.V1.Model.AffineTransform, options)
    |> deserialize(:"video", :struct, GoogleApi.Slides.V1.Model.Video, options)
    |> deserialize(:"wordArt", :struct, GoogleApi.Slides.V1.Model.WordArt, options)
  end
end



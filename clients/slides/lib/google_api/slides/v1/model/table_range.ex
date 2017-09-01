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

defmodule GoogleApi.Slides.V1.Model.TableRange do
  @moduledoc """
  A table range represents a reference to a subset of a table.  It&#39;s important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let&#39;s say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this:                [             ]  A table range with location &#x3D; (0, 0), row span &#x3D; 3 and column span &#x3D; 2 specifies the following cells:     x     x    [      x      ]
  """

  @derive [Poison.Encoder]
  defstruct [
    :"columnSpan",
    :"location",
    :"rowSpan"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableRange do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"location", :struct, GoogleApi.Slides.V1.Model.TableCellLocation, options)
  end
end



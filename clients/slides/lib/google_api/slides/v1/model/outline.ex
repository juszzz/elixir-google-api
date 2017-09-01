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

defmodule GoogleApi.Slides.V1.Model.Outline do
  @moduledoc """
  The outline of a PageElement.  If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"dashStyle",
    :"outlineFill",
    :"propertyState",
    :"weight"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Outline do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"outlineFill", :struct, GoogleApi.Slides.V1.Model.OutlineFill, options)
    |> deserialize(:"weight", :struct, GoogleApi.Slides.V1.Model.Dimension, options)
  end
end



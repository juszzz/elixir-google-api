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

defmodule GoogleApi.ServiceUser.V1.Model.CustomError do
  @moduledoc """
  Customize service error responses.  For example, list any service specific protobuf types that can appear in error detail lists of error responses.  Example:      custom_error:       types:       - google.foo.v1.CustomError       - google.foo.v1.AnotherError
  """

  @derive [Poison.Encoder]
  defstruct [
    :"rules",
    :"types"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.CustomError do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rules", :list, GoogleApi.ServiceUser.V1.Model.CustomErrorRule, options)
  end
end



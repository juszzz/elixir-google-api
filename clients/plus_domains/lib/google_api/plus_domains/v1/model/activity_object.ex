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

defmodule GoogleApi.PlusDomains.V1.Model.Activity_object do
  @moduledoc """
  The object of this activity.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"actor",
    :"attachments",
    :"content",
    :"id",
    :"objectType",
    :"originalContent",
    :"plusoners",
    :"replies",
    :"resharers",
    :"statusForViewer",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.Activity_object do
  import GoogleApi.PlusDomains.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"actor", :struct, GoogleApi.PlusDomains.V1.Model.Activity_object_actor, options)
    |> deserialize(:"attachments", :list, GoogleApi.PlusDomains.V1.Model.Activity_object_attachments, options)
    |> deserialize(:"plusoners", :struct, GoogleApi.PlusDomains.V1.Model.Activity_object_plusoners, options)
    |> deserialize(:"replies", :struct, GoogleApi.PlusDomains.V1.Model.Activity_object_replies, options)
    |> deserialize(:"resharers", :struct, GoogleApi.PlusDomains.V1.Model.Activity_object_resharers, options)
    |> deserialize(:"statusForViewer", :struct, GoogleApi.PlusDomains.V1.Model.Activity_object_statusForViewer, options)
  end
end



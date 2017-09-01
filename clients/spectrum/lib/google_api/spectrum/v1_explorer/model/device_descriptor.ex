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

defmodule GoogleApi.Spectrum.V1EXPLORER.Model.DeviceDescriptor do
  @moduledoc """
  The device descriptor contains parameters that identify the specific device, such as its manufacturer serial number, regulatory-specific identifier (e.g., FCC ID), and any other device characteristics required by regulatory domains.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"etsiEnDeviceCategory",
    :"etsiEnDeviceEmissionsClass",
    :"etsiEnDeviceType",
    :"etsiEnTechnologyId",
    :"fccId",
    :"fccTvbdDeviceType",
    :"manufacturerId",
    :"modelId",
    :"rulesetIds",
    :"serialNumber"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1EXPLORER.Model.DeviceDescriptor do
  import GoogleApi.Spectrum.V1EXPLORER.Deserializer
  def decode(value, options) do
    value
  end
end



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

defmodule GoogleApi.Drive.V3.Model.TeamDrive_backgroundImageFile do
  @moduledoc """
  An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don&#39;t set themeId. When specified, all fields of the backgroundImageFile must be set.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"width",
    :"xCoordinate",
    :"yCoordinate"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.TeamDrive_backgroundImageFile do
  import GoogleApi.Drive.V3.Deserializer
  def decode(value, options) do
    value
  end
end


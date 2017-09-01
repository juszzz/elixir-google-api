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

defmodule GoogleApi.Compute.V1.Model.Image do
  @moduledoc """
  An Image resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"archiveSizeBytes",
    :"creationTimestamp",
    :"deprecated",
    :"description",
    :"diskSizeGb",
    :"family",
    :"guestOsFeatures",
    :"id",
    :"imageEncryptionKey",
    :"kind",
    :"labelFingerprint",
    :"labels",
    :"licenses",
    :"name",
    :"rawDisk",
    :"selfLink",
    :"sourceDisk",
    :"sourceDiskEncryptionKey",
    :"sourceDiskId",
    :"sourceType",
    :"status"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Image do
  import GoogleApi.Compute.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"deprecated", :struct, GoogleApi.Compute.V1.Model.DeprecationStatus, options)
    |> deserialize(:"guestOsFeatures", :list, GoogleApi.Compute.V1.Model.GuestOsFeature, options)
    |> deserialize(:"imageEncryptionKey", :struct, GoogleApi.Compute.V1.Model.CustomerEncryptionKey, options)
    |> deserialize(:"rawDisk", :struct, GoogleApi.Compute.V1.Model.Image_rawDisk, options)
    |> deserialize(:"sourceDiskEncryptionKey", :struct, GoogleApi.Compute.V1.Model.CustomerEncryptionKey, options)
  end
end



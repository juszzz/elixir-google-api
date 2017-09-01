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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Notification do
  @moduledoc """
  A notification of one event relating to an enterprise.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"appRestrictionsSchemaChangeEvent",
    :"appUpdateEvent",
    :"enterpriseId",
    :"installFailureEvent",
    :"newDeviceEvent",
    :"newPermissionsEvent",
    :"notificationType",
    :"productApprovalEvent",
    :"productAvailabilityChangeEvent",
    :"timestampMillis"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Notification do
  import GoogleApi.AndroidEnterprise.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"appRestrictionsSchemaChangeEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaChangeEvent, options)
    |> deserialize(:"appUpdateEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent, options)
    |> deserialize(:"installFailureEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.InstallFailureEvent, options)
    |> deserialize(:"newDeviceEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.NewDeviceEvent, options)
    |> deserialize(:"newPermissionsEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.NewPermissionsEvent, options)
    |> deserialize(:"productApprovalEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.ProductApprovalEvent, options)
    |> deserialize(:"productAvailabilityChangeEvent", :struct, GoogleApi.AndroidEnterprise.V1.Model.ProductAvailabilityChangeEvent, options)
  end
end



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

defmodule GoogleApi.Compute.V1.Model.HealthCheck do
  @moduledoc """
  An HealthCheck resource. This resource defines a template for how individual virtual machines should be checked for health, via one of the supported protocols.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"checkIntervalSec",
    :"creationTimestamp",
    :"description",
    :"healthyThreshold",
    :"httpHealthCheck",
    :"httpsHealthCheck",
    :"id",
    :"kind",
    :"name",
    :"selfLink",
    :"sslHealthCheck",
    :"tcpHealthCheck",
    :"timeoutSec",
    :"type",
    :"unhealthyThreshold"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HealthCheck do
  import GoogleApi.Compute.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"httpHealthCheck", :struct, GoogleApi.Compute.V1.Model.HTTPHealthCheck, options)
    |> deserialize(:"httpsHealthCheck", :struct, GoogleApi.Compute.V1.Model.HTTPSHealthCheck, options)
    |> deserialize(:"sslHealthCheck", :struct, GoogleApi.Compute.V1.Model.SSLHealthCheck, options)
    |> deserialize(:"tcpHealthCheck", :struct, GoogleApi.Compute.V1.Model.TCPHealthCheck, options)
  end
end


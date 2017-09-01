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

defmodule GoogleApi.ServiceManagement.V1.Model.Logging do
  @moduledoc """
  Logging configuration of the service.  The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the &#x60;activity_history&#x60; log is sent to both the producer and consumer projects, whereas the &#x60;purchase_history&#x60; log is only sent to the producer project.      monitored_resources:     - type: library.googleapis.com/branch       labels:       - key: /city         description: The city where the library branch is located in.       - key: /name         description: The name of the branch.     logs:     - name: activity_history       labels:       - key: /customer_id     - name: purchase_history     logging:       producer_destinations:       - monitored_resource: library.googleapis.com/branch         logs:         - activity_history         - purchase_history       consumer_destinations:       - monitored_resource: library.googleapis.com/branch         logs:         - activity_history
  """

  @derive [Poison.Encoder]
  defstruct [
    :"consumerDestinations",
    :"producerDestinations"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Logging do
  import GoogleApi.ServiceManagement.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"consumerDestinations", :list, GoogleApi.ServiceManagement.V1.Model.LoggingDestination, options)
    |> deserialize(:"producerDestinations", :list, GoogleApi.ServiceManagement.V1.Model.LoggingDestination, options)
  end
end



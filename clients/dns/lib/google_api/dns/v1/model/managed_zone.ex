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

defmodule GoogleApi.DNS.V1.Model.ManagedZone do
  @moduledoc """
  A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.

  ## Attributes

  - creationTime (String): The time that this resource was created on the server. This is in RFC3339 text format. Output only. Defaults to: `null`.
  - description (String): A mutable string of at most 1024 characters associated with this resource for the user&#39;s convenience. Has no effect on the managed zone&#39;s function. Defaults to: `null`.
  - dnsName (String): The DNS name of this managed zone, for instance \&quot;example.com.\&quot;. Defaults to: `null`.
  - id (String): Unique identifier for the resource; defined by the server (output only) Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;dns#managedZone\&quot;. Defaults to: `null`.
  - name (String): User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes. Defaults to: `null`.
  - nameServerSet (String): Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users will leave this field unset. Defaults to: `null`.
  - nameServers (List[String]): Delegate your managed_zone to these virtual name servers; defined by the server (output only) Defaults to: `null`.
  """

  defstruct [
    :"creationTime",
    :"description",
    :"dnsName",
    :"id",
    :"kind",
    :"name",
    :"nameServerSet",
    :"nameServers"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def encode(value, options) do
    GoogleApi.DNS.V1.Deserializer.serialize_non_nil(value, options)
  end
end


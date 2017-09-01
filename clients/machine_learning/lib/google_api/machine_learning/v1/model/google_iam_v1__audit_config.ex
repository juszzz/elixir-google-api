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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditConfig do
  @moduledoc """
  Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.  If there are AuditConfigs for both &#x60;allServices&#x60; and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditConfig are exempted.  Example Policy with multiple AuditConfigs:      {       \&quot;audit_configs\&quot;: [         {           \&quot;service\&quot;: \&quot;allServices\&quot;           \&quot;audit_log_configs\&quot;: [             {               \&quot;log_type\&quot;: \&quot;DATA_READ\&quot;,               \&quot;exempted_members\&quot;: [                 \&quot;user:foo@gmail.com\&quot;               ]             },             {               \&quot;log_type\&quot;: \&quot;DATA_WRITE\&quot;,             },             {               \&quot;log_type\&quot;: \&quot;ADMIN_READ\&quot;,             }           ]         },         {           \&quot;service\&quot;: \&quot;fooservice.googleapis.com\&quot;           \&quot;audit_log_configs\&quot;: [             {               \&quot;log_type\&quot;: \&quot;DATA_READ\&quot;,             },             {               \&quot;log_type\&quot;: \&quot;DATA_WRITE\&quot;,               \&quot;exempted_members\&quot;: [                 \&quot;user:bar@gmail.com\&quot;               ]             }           ]         }       ]     }  For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts foo@gmail.com from DATA_READ logging, and bar@gmail.com from DATA_WRITE logging.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"auditLogConfigs",
    :"exemptedMembers",
    :"service"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditConfig do
  import GoogleApi.MachineLearning.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"auditLogConfigs", :list, GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditLogConfig, options)
  end
end



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

defmodule GoogleApi.IAM.V1.Model.Policy do
  @moduledoc """
  Defines an Identity and Access Management (IAM) policy. It is used to specify access control policies for Cloud Platform resources.   A &#x60;Policy&#x60; consists of a list of &#x60;bindings&#x60;. A &#x60;Binding&#x60; binds a list of &#x60;members&#x60; to a &#x60;role&#x60;, where the members can be user accounts, Google groups, Google domains, and service accounts. A &#x60;role&#x60; is a named list of permissions defined by IAM.  **Example**      {       \&quot;bindings\&quot;: [         {           \&quot;role\&quot;: \&quot;roles/owner\&quot;,           \&quot;members\&quot;: [             \&quot;user:mike@example.com\&quot;,             \&quot;group:admins@example.com\&quot;,             \&quot;domain:google.com\&quot;,             \&quot;serviceAccount:my-other-app@appspot.gserviceaccount.com\&quot;,           ]         },         {           \&quot;role\&quot;: \&quot;roles/viewer\&quot;,           \&quot;members\&quot;: [\&quot;user:sean@example.com\&quot;]         }       ]     }  For a description of IAM and its features, see the [IAM developer&#39;s guide](https://cloud.google.com/iam).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bindings",
    :"etag",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.Policy do
  import GoogleApi.IAM.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bindings", :list, GoogleApi.IAM.V1.Model.Binding, options)
  end
end



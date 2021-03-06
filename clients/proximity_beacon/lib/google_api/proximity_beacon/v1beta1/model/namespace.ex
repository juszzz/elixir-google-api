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

defmodule GoogleApi.ProximityBeacon.V1beta1.Model.Namespace do
  @moduledoc """
  An attachment namespace defines read and write access for all the attachments created under it. Each namespace is globally unique, and owned by one project which is the only project that can create attachments under it.

  ## Attributes

  - namespaceName (String): Resource name of this namespace. Namespaces names have the format: &lt;code&gt;namespaces/&lt;var&gt;namespace&lt;/var&gt;&lt;/code&gt;. Defaults to: `null`.
  - servingVisibility (String): Specifies what clients may receive attachments under this namespace via &#x60;beaconinfo.getforobserved&#x60;. Defaults to: `null`.
    - Enum - one of [VISIBILITY_UNSPECIFIED, UNLISTED, PUBLIC]
  """

  defstruct [
    :"namespaceName",
    :"servingVisibility"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.Namespace do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.Namespace do
  def encode(value, options) do
    GoogleApi.ProximityBeacon.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end


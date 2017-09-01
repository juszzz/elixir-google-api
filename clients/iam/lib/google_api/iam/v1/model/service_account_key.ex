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

defmodule GoogleApi.IAM.V1.Model.ServiceAccountKey do
  @moduledoc """
  Represents a service account key.  A service account has two sets of key-pairs: user-managed, and system-managed.  User-managed key-pairs can be created and deleted by users.  Users are responsible for rotating these keys periodically to ensure security of their service accounts.  Users retain the private key of these key-pairs, and Google retains ONLY the public key.  System-managed key-pairs are managed automatically by Google, and rotated daily without user intervention.  The private key never leaves Google&#39;s servers to maximize security.  Public keys for all service accounts are also published at the OAuth2 Service Account API.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"keyAlgorithm",
    :"name",
    :"privateKeyData",
    :"privateKeyType",
    :"publicKeyData",
    :"validAfterTime",
    :"validBeforeTime"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ServiceAccountKey do
  import GoogleApi.IAM.V1.Deserializer
  def decode(value, options) do
    value
  end
end



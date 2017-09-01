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

defmodule GoogleApi.ProximityBeacon.V1BETA1.Model.EphemeralIdRegistration do
  @moduledoc """
  Write-only registration parameters for beacons using Eddystone-EID format. Two ways of securely registering an Eddystone-EID beacon with the service are supported:  1. Perform an ECDH key exchange via this API, including a previous call    to &#x60;GET /v1beta1/eidparams&#x60;. In this case the fields    &#x60;beacon_ecdh_public_key&#x60; and &#x60;service_ecdh_public_key&#x60; should be    populated and &#x60;beacon_identity_key&#x60; should not be populated. This    method ensures that only the two parties in the ECDH key exchange can    compute the identity key, which becomes a secret between them. 2. Derive or obtain the beacon&#39;s identity key via other secure means    (perhaps an ECDH key exchange between the beacon and a mobile device    or any other secure method), and then submit the resulting identity key    to the service. In this case &#x60;beacon_identity_key&#x60; field should be    populated, and neither of &#x60;beacon_ecdh_public_key&#x60; nor    &#x60;service_ecdh_public_key&#x60; fields should be. The security of this method    depends on how securely the parties involved (in particular the    bluetooth client) handle the identity key, and obviously on how    securely the identity key was generated.  See [the Eddystone specification](https://github.com/google/eddystone/tree/master/eddystone-eid) at GitHub.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"beaconEcdhPublicKey",
    :"beaconIdentityKey",
    :"initialClockValue",
    :"initialEid",
    :"rotationPeriodExponent",
    :"serviceEcdhPublicKey"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ProximityBeacon.V1BETA1.Model.EphemeralIdRegistration do
  import GoogleApi.ProximityBeacon.V1BETA1.Deserializer
  def decode(value, options) do
    value
  end
end



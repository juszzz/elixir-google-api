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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.CheckValidCredsRequest do
  @moduledoc """
  A request to determine whether the user has valid credentials. This method is used to limit the number of OAuth popups in the user interface. The user id is inferred from the API call context. If the data source has the Google+ authorization type, this method returns false, as it cannot be determined whether the credentials are already valid merely based on the user id.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.CheckValidCredsRequest do
  import GoogleApi.BigQueryDataTransfer.V1.Deserializer
  def decode(value, options) do
    value
  end
end



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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Install do
  @moduledoc """
  The existence of an Installs resource indicates that an app is installed on a particular device (or that an install is pending).  The API can be used to create an install resource using the update method. This triggers the actual install of the app on the device. If the user does not already have an entitlement for the app, then an attempt is made to create one. If this fails (for example, because the app is not free and there is no available license), then the creation of the install fails.  The API can also be used to update an installed app. If the update method is used on an existing install, then the app will be updated to the latest available version.  Note that it is not possible to force the installation of a specific version of an app: the version code is read-only.  If a user installs an app themselves (as permitted by the enterprise), then again an install resource and possibly an entitlement resource are automatically created.  The API can also be used to delete an install resource, which triggers the removal of the app from the device. Note that deleting an install does not automatically remove the corresponding entitlement, even if there are no remaining installs. The install resource will also be deleted if the user uninstalls the app themselves.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"installState",
    :"kind",
    :"productId",
    :"versionCode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Install do
  import GoogleApi.AndroidEnterprise.V1.Deserializer
  def decode(value, options) do
    value
  end
end



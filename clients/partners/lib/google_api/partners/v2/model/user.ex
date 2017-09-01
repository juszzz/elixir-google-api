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

defmodule GoogleApi.Partners.V2.Model.User do
  @moduledoc """
  A resource representing a user of the Partners platform.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"availableAdwordsManagerAccounts",
    :"certificationStatus",
    :"company",
    :"companyVerificationEmail",
    :"examStatus",
    :"id",
    :"internalId",
    :"lastAccessTime",
    :"primaryEmails",
    :"profile",
    :"publicProfile"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.User do
  import GoogleApi.Partners.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"availableAdwordsManagerAccounts", :list, GoogleApi.Partners.V2.Model.AdWordsManagerAccountInfo, options)
    |> deserialize(:"certificationStatus", :list, GoogleApi.Partners.V2.Model.Certification, options)
    |> deserialize(:"company", :struct, GoogleApi.Partners.V2.Model.CompanyRelation, options)
    |> deserialize(:"examStatus", :list, GoogleApi.Partners.V2.Model.ExamStatus, options)
    |> deserialize(:"profile", :struct, GoogleApi.Partners.V2.Model.UserProfile, options)
    |> deserialize(:"publicProfile", :struct, GoogleApi.Partners.V2.Model.PublicProfile, options)
  end
end



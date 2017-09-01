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

defmodule GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoProgress do
  @moduledoc """
  Video annotation progress. Included in the &#x60;metadata&#x60; field of the &#x60;Operation&#x60; returned by the &#x60;GetOperation&#x60; call of the &#x60;google::longrunning::Operations&#x60; service.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"annotationProgress"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoProgress do
  import GoogleApi.VideoIntelligence.V1BETA1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"annotationProgress", :list, GoogleApi.VideoIntelligence.V1BETA1.Model.GoogleCloudVideointelligenceV1_VideoAnnotationProgress, options)
  end
end



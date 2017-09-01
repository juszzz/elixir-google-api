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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Job do
  @moduledoc """
  Represents a training or prediction job.  Next ID: 16
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createTime",
    :"endTime",
    :"errorMessage",
    :"jobId",
    :"predictionInput",
    :"predictionOutput",
    :"startTime",
    :"state",
    :"trainingInput",
    :"trainingOutput"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Job do
  import GoogleApi.MachineLearning.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"predictionInput", :struct, GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionInput, options)
    |> deserialize(:"predictionOutput", :struct, GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionOutput, options)
    |> deserialize(:"trainingInput", :struct, GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingInput, options)
    |> deserialize(:"trainingOutput", :struct, GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingOutput, options)
  end
end



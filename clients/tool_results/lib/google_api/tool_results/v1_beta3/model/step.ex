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

defmodule GoogleApi.ToolResults.V1BETA3.Model.Step do
  @moduledoc """
  A Step represents a single operation performed as part of Execution. A step can be used to represent the execution of a tool ( for example a test runner execution or an execution of a compiler).  Steps can overlap (for instance two steps might have the same start time if some operations are done in parallel).  Here is an example, let&#39;s consider that we have a continuous build is executing a test runner for each iteration. The workflow would look like: - user creates a Execution with id 1 - user creates an TestExecutionStep with id 100 for Execution 1 - user update TestExecutionStep with id 100 to add a raw xml log + the service parses the xml logs and returns a TestExecutionStep with updated TestResult(s). - user update the status of TestExecutionStep with id 100 to COMPLETE  A Step can be updated until its state is set to COMPLETE at which points it becomes immutable.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"completionTime",
    :"creationTime",
    :"description",
    :"deviceUsageDuration",
    :"dimensionValue",
    :"hasImages",
    :"labels",
    :"name",
    :"outcome",
    :"runDuration",
    :"state",
    :"stepId",
    :"testExecutionStep",
    :"toolExecutionStep"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1BETA3.Model.Step do
  import GoogleApi.ToolResults.V1BETA3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"completionTime", :struct, GoogleApi.ToolResults.V1BETA3.Model.Timestamp, options)
    |> deserialize(:"creationTime", :struct, GoogleApi.ToolResults.V1BETA3.Model.Timestamp, options)
    |> deserialize(:"deviceUsageDuration", :struct, GoogleApi.ToolResults.V1BETA3.Model.Duration, options)
    |> deserialize(:"dimensionValue", :list, GoogleApi.ToolResults.V1BETA3.Model.StepDimensionValueEntry, options)
    |> deserialize(:"labels", :list, GoogleApi.ToolResults.V1BETA3.Model.StepLabelsEntry, options)
    |> deserialize(:"outcome", :struct, GoogleApi.ToolResults.V1BETA3.Model.Outcome, options)
    |> deserialize(:"runDuration", :struct, GoogleApi.ToolResults.V1BETA3.Model.Duration, options)
    |> deserialize(:"testExecutionStep", :struct, GoogleApi.ToolResults.V1BETA3.Model.TestExecutionStep, options)
    |> deserialize(:"toolExecutionStep", :struct, GoogleApi.ToolResults.V1BETA3.Model.ToolExecutionStep, options)
  end
end



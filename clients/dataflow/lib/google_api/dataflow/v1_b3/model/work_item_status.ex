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

defmodule GoogleApi.Dataflow.V1B3.Model.WorkItemStatus do
  @moduledoc """
  Conveys a worker&#39;s progress through the work described by a WorkItem.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"completed",
    :"counterUpdates",
    :"dynamicSourceSplit",
    :"errors",
    :"metricUpdates",
    :"progress",
    :"reportIndex",
    :"reportedProgress",
    :"requestedLeaseDuration",
    :"sourceFork",
    :"sourceOperationResponse",
    :"stopPosition",
    :"workItemId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1B3.Model.WorkItemStatus do
  import GoogleApi.Dataflow.V1B3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"counterUpdates", :list, GoogleApi.Dataflow.V1B3.Model.CounterUpdate, options)
    |> deserialize(:"dynamicSourceSplit", :struct, GoogleApi.Dataflow.V1B3.Model.DynamicSourceSplit, options)
    |> deserialize(:"errors", :list, GoogleApi.Dataflow.V1B3.Model.Status, options)
    |> deserialize(:"metricUpdates", :list, GoogleApi.Dataflow.V1B3.Model.MetricUpdate, options)
    |> deserialize(:"progress", :struct, GoogleApi.Dataflow.V1B3.Model.ApproximateProgress, options)
    |> deserialize(:"reportedProgress", :struct, GoogleApi.Dataflow.V1B3.Model.ApproximateReportedProgress, options)
    |> deserialize(:"sourceFork", :struct, GoogleApi.Dataflow.V1B3.Model.SourceFork, options)
    |> deserialize(:"sourceOperationResponse", :struct, GoogleApi.Dataflow.V1B3.Model.SourceOperationResponse, options)
    |> deserialize(:"stopPosition", :struct, GoogleApi.Dataflow.V1B3.Model.Position, options)
  end
end



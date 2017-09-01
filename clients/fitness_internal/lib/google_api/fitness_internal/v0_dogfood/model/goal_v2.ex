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

defmodule GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2 do
  @moduledoc """
  Represents a goal, to be contained in a DataPoint, of datatype com.google.android.apps.fitness.goal. The stream will be identified by a datasource id that is a combination of defining characteristics of the goal, e.g. datatype, period, activity, etc; use FitnessAppDataSources.getGoalStreamName(). Refer to go/fit-goals for usage examples. Currently used for both storage and service API. Next id: 10
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cumulativeObjective",
    :"dataTypeName",
    :"endTimeNanos",
    :"filter",
    :"recurInterval",
    :"segmentObjective",
    :"startTimeNanos",
    :"streamId",
    :"targetObjective"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2 do
  import GoogleApi.FitnessInternal.V0DOGFOOD.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cumulativeObjective", :struct, GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2CumulativeObjective, options)
    |> deserialize(:"filter", :list, GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2Criteria, options)
    |> deserialize(:"recurInterval", :struct, GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2TimePeriod, options)
    |> deserialize(:"segmentObjective", :struct, GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2SegmentObjective, options)
    |> deserialize(:"targetObjective", :struct, GoogleApi.FitnessInternal.V0DOGFOOD.Model.GoalV2TargetObjective, options)
  end
end



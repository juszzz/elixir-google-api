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

defmodule GoogleApi.Analytics.V3.Model.Experiments do
  @moduledoc """
  An experiment collection lists Analytics experiments to which the user has access. Each view (profile) can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"items",
    :"itemsPerPage",
    :"kind",
    :"nextLink",
    :"previousLink",
    :"startIndex",
    :"totalResults",
    :"username"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Experiments do
  import GoogleApi.Analytics.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, GoogleApi.Analytics.V3.Model.Experiment, options)
  end
end



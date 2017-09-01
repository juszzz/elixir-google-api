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

defmodule GoogleApi.Container.V1.Model.AddonsConfig do
  @moduledoc """
  Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"horizontalPodAutoscaling",
    :"httpLoadBalancing",
    :"kubernetesDashboard"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.AddonsConfig do
  import GoogleApi.Container.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"horizontalPodAutoscaling", :struct, GoogleApi.Container.V1.Model.HorizontalPodAutoscaling, options)
    |> deserialize(:"httpLoadBalancing", :struct, GoogleApi.Container.V1.Model.HttpLoadBalancing, options)
    |> deserialize(:"kubernetesDashboard", :struct, GoogleApi.Container.V1.Model.KubernetesDashboard, options)
  end
end


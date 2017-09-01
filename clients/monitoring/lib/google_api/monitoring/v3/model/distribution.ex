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

defmodule GoogleApi.Monitoring.V3.Model.Distribution do
  @moduledoc """
  Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum_of_squared_deviation fields meaningless.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bucketCounts",
    :"bucketOptions",
    :"count",
    :"mean",
    :"range",
    :"sumOfSquaredDeviation"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Distribution do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bucketOptions", :struct, GoogleApi.Monitoring.V3.Model.BucketOptions, options)
    |> deserialize(:"range", :struct, GoogleApi.Monitoring.V3.Model.Range, options)
  end
end



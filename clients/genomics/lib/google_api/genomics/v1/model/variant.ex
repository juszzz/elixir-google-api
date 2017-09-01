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

defmodule GoogleApi.Genomics.V1.Model.Variant do
  @moduledoc """
  A variant represents a change in DNA sequence relative to a reference sequence. For example, a variant could represent a SNP or an insertion. Variants belong to a variant set.  For more genomics resource definitions, see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)  Each of the calls on a variant represent a determination of genotype with respect to that variant. For example, a call might assign probability of 0.32 to the occurrence of a SNP named rs1234 in a sample named NA12345. A call belongs to a call set, which contains related calls typically from one sample.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"info",
    :"alternateBases",
    :"calls",
    :"created",
    :"end",
    :"filter",
    :"id",
    :"names",
    :"quality",
    :"referenceBases",
    :"referenceName",
    :"start",
    :"variantSetId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Variant do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"calls", :list, GoogleApi.Genomics.V1.Model.VariantCall, options)
  end
end



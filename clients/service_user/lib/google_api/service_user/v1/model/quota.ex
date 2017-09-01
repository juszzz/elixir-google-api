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

defmodule GoogleApi.ServiceUser.V1.Model.Quota do
  @moduledoc """
  Quota configuration helps to achieve fairness and budgeting in service usage.  The quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with   corresponding costs. - The quota.limits defines limits on the metrics, which will be used for   quota checks at runtime.  An example quota configuration in yaml format:     quota:       - name: apiWriteQpsPerProject        metric: library.googleapis.com/write_calls        unit: \&quot;1/min/{project}\&quot;  # rate limit for consumer projects        values:          STANDARD: 10000        # The metric rules bind all methods to the read_calls metric,      # except for the UpdateBook and DeleteBook methods. These two methods      # are mapped to the write_calls metric, with the UpdateBook method      # consuming at twice rate as the DeleteBook method.      metric_rules:      - selector: \&quot;*\&quot;        metric_costs:          library.googleapis.com/read_calls: 1      - selector: google.example.library.v1.LibraryService.UpdateBook        metric_costs:          library.googleapis.com/write_calls: 2      - selector: google.example.library.v1.LibraryService.DeleteBook        metric_costs:          library.googleapis.com/write_calls: 1   Corresponding Metric definition:       metrics:      - name: library.googleapis.com/read_calls        display_name: Read requests        metric_kind: DELTA        value_type: INT64       - name: library.googleapis.com/write_calls        display_name: Write requests        metric_kind: DELTA        value_type: INT64
  """

  @derive [Poison.Encoder]
  defstruct [
    :"limits",
    :"metricRules"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Quota do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"limits", :list, GoogleApi.ServiceUser.V1.Model.QuotaLimit, options)
    |> deserialize(:"metricRules", :list, GoogleApi.ServiceUser.V1.Model.MetricRule, options)
  end
end



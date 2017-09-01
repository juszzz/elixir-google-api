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

defmodule GoogleApi.DFAReporting.V28.Model.CreativeAsset do
  @moduledoc """
  Creative Asset.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"actionScript3",
    :"active",
    :"alignment",
    :"artworkType",
    :"assetIdentifier",
    :"backupImageExit",
    :"bitRate",
    :"childAssetType",
    :"collapsedSize",
    :"companionCreativeIds",
    :"customStartTimeValue",
    :"detectedFeatures",
    :"displayType",
    :"duration",
    :"durationType",
    :"expandedDimension",
    :"fileSize",
    :"flashVersion",
    :"hideFlashObjects",
    :"hideSelectionBoxes",
    :"horizontallyLocked",
    :"id",
    :"idDimensionValue",
    :"mimeType",
    :"offset",
    :"originalBackup",
    :"position",
    :"positionLeftUnit",
    :"positionTopUnit",
    :"progressiveServingUrl",
    :"pushdown",
    :"pushdownDuration",
    :"role",
    :"size",
    :"sslCompliant",
    :"startTimeType",
    :"streamingServingUrl",
    :"transparency",
    :"verticallyLocked",
    :"videoDuration",
    :"windowMode",
    :"zIndex",
    :"zipFilename",
    :"zipFilesize"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CreativeAsset do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"assetIdentifier", :struct, GoogleApi.DFAReporting.V28.Model.CreativeAssetId, options)
    |> deserialize(:"backupImageExit", :struct, GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent, options)
    |> deserialize(:"collapsedSize", :struct, GoogleApi.DFAReporting.V28.Model.Size, options)
    |> deserialize(:"expandedDimension", :struct, GoogleApi.DFAReporting.V28.Model.Size, options)
    |> deserialize(:"idDimensionValue", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"offset", :struct, GoogleApi.DFAReporting.V28.Model.OffsetPosition, options)
    |> deserialize(:"position", :struct, GoogleApi.DFAReporting.V28.Model.OffsetPosition, options)
    |> deserialize(:"size", :struct, GoogleApi.DFAReporting.V28.Model.Size, options)
  end
end



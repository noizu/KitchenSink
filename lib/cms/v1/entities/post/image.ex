#-------------------------------------------------------------------------------
# Author: Keith Brings
# Copyright (C) 2018 Noizu Labs, Inc. All rights reserved.
#-------------------------------------------------------------------------------

defmodule Noizu.Cms.Post.Image do
  @type t :: %__MODULE__{
               title: String.t,
               alt: String.t,
               resolutions: Map.t, # various resolutions
               attributes: Map.t,
             }

  defstruct [
    title: nil,
    alt: nil,
    resolutions: %{},
    attributes: %{},
  ]
end # end defmodule
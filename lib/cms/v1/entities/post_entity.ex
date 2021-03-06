#-------------------------------------------------------------------------------
# Author: Keith Brings
# Copyright (C) 2018 Noizu Labs, Inc. All rights reserved.
#-------------------------------------------------------------------------------

defmodule Noizu.Cms.PostEntity do
  @vsn 1.0
  @type t :: %__MODULE__{
               identifier: integer,
               created_on: DateTime.t,
               modified_on: DateTime.t,
               version: integer,
               version_record: tuple,
               status: atom,
               type: atom,
               editor: any,
               name: String.t,
               description: String.t,
               tags: MapSet.t,
               record: any,
               vsn: float
             }

  defstruct [
    identifier: nil,
    created_on: nil,
    modified_on: nil,
    version: nil,
    version_record: nil,
    status: nil,
    type: nil,
    editor: nil,
    name: nil,
    description: nil,
    tags: MapSet.new([]),
    record: nil,
    vsn: @vsn
  ]

  use Noizu.Cms.Database
  use Noizu.Scaffolding.EntityBehaviour,
      sref_module: "cms",
      mnesia_table: Noizu.Cms.Database.PostTable,
      as_record_options: %{additional_fields: [:status, :type, :editor]},
      override: []

end # end defmodule SolaceBackend.Cms.PostEntity
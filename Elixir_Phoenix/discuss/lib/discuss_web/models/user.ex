defmodule DiscussWeb.User do
  # diz ao Phoenix que sera um MODEL (e usara as funcoes pre-definidas de model
  use DiscussWeb, :model

  # Mostra como sera o schema dentro do DB
  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end


  # Changeset Function => usada para representar um Record / Struct on the DB and como nos queremos mudar o DB

  def changeset( struct, params \\ %{}) do
    struct
      |> cast( params, [:email, :provider, :token])
      |> validate_required([:email, :provider, :token])
  end
end
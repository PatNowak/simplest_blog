defmodule Blog.User do
  use Blog.Web, :model
  alias Comeonin.Bcrypt

  schema "users" do
    field :login, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:login, :password])
    |> validate_required([:login, :password])
    |> insert_password_hash_into_changeset()
  end

  defp insert_password_hash_into_changeset(changeset) do
    changeset
    |> put_change(:password_hash, Bcrypt.hashpwsalt(changeset.changes.password))
    |> delete_change(:password)
  end
end

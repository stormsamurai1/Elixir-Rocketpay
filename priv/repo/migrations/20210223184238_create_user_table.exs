defmodule :"Elixir.Rocketpay.Repo.Migrations.CreateUserTable.exs" do
  use Ecto.Migration

  def up do

    create table (:users) do
      add :name, :string
      add :age, :integer
      add :email, :string
      add :password_hash, :string
      add :nickname, :string

      timestamps()
    end

    create unique_index(:users, [ :email ])
    create unique_index(:users, [ :nickname ])

  end


  def down do
    drop table(:users)
  end
end
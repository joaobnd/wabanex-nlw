defmodule WabanexWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  import_types WabanexWeb.Schema.Types.Custom.UUID4

  @desc "representação lógica do usuário"
  object :user do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :email, non_null(:string)
  end

  input_object :create_user_input do
    field :name, non_null(:string), description: "nome do usuario"
    field :email, non_null(:string), description: "email do usuario"
    field :password, non_null(:string), description: "senha do usuario"
  end
end

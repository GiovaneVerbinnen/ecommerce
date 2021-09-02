json.extract! cliente, :id, :nome, :cpf, :telefone, :email, :endereco, :numero, :cidade, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

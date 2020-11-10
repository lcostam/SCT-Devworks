json.extract! tarefa, :id, :descricao, :status, :prazo, :usuario_id, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)

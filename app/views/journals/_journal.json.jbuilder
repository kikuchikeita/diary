json.extract! journal, :id, :title, :when, :where, :who, :what, :why, :how, :body, :created_at, :updated_at
json.url journal_url(journal, format: :json)

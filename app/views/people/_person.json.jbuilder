json.extract! person, :id, :name, :lastname, :job_title, :department, :created_at, :updated_at
json.url person_url(person, format: :json)

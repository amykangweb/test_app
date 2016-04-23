json.array!(@peeps) do |peep|
  json.extract! peep, :id, :content
  json.url peep_url(peep, format: :json)
end

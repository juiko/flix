json.array!(@personas) do |persona|
  json.extract! persona, :id, :name, :edad
  json.url persona_url(persona, format: :json)
end

json.array!(@accidents) do |accident|
  json.extract! accident, :id, :nombre_diligenciador, :tipodoc_id, :documento, :nombre_afectado, :tipodoc_id, :documento
  json.url accident_url(accident, format: :json)
end

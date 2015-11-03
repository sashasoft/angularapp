json.array!(@mons) do |mon|
  json.extract! mon, :id
  json.url mon_url(mon, format: :json)
end

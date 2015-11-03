json.array!(@man_men) do |man_man|
  json.extract! man_man, :id, :name, :email, :age
  json.url man_man_url(man_man, format: :json)
end

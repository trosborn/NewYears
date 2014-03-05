json.array!(@goals) do |goal|
  json.extract! goal, :id, :title, :description, :frequency
  json.url goal_url(goal, format: :json)
end

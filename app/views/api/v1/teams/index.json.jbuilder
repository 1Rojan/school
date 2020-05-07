json.array! @teams do |team|
  json.id team.id
  json.name team.name
  json.designation team.designation
  json.description team.description
  json.team_category team.team_category
  if team.image.attached?
    json.image url_for team.image
  end

end
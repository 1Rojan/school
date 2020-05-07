  json.id @find_team.id
  json.name @find_team.name
  json.designation @find_team.designation
  json.description @find_team.description
  json.team_category @find_team.team_category
  if @find_team.image.attached?
    json.image url_for @find_team.image
  end
json.id @find_about.id
json.name @find_about.title
json.description @find_about.description
json.description @find_about.description
if @find_about.image.attached?
  json.image url_for @find_about.image
end
json.id @find_facility.id
json.name @find_facility.name
json.description @find_facility.description
json.description @find_facility.description
if @find_facility.image.attached?
  json.image url_for @find_facility.image
else
  json.image nil
end
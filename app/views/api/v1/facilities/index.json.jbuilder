json.array! @facilities do |facility|
  json.id facility.id
  json.name facility.name
  json.description facility.description
  if facility.image.attached?
    json.image url_for facility.image
  else
    json.image nil
  end
end

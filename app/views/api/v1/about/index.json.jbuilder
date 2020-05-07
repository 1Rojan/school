json.array! @about do |about|
  json.id about.id
  json.name about.title
  json.description about.description
  if about.image.attached?
    json.image url_for about.image
  end
end

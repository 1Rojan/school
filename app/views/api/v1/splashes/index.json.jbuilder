json.array! @splashes do |splash|
  json.id splash.id
  json.name splash.name
  if splash.image.attached?
    json.image splash.image
  end
end
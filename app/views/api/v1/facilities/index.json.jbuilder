json.array! @facilities do |device|
  json.name device.name
  json.description device.description
  if device.image.attached?
    json.image url_for device.image
  end
end

json.array! @gallery do |gallery|
  json.id gallery.id
  json.description gallery.description
  if gallery.image.attached?
    json.image url_for gallery.image
  end
end
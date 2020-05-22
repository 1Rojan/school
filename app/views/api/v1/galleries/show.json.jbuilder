json.id @find_gallery.id
json.desciption @find_gallery.description
if @find_gallery.image.attached?
  json.image url_for @find_gallery.image
else
  json.image nil
end
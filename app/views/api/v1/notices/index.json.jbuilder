json.array! @notices do |notice|
  json.id notice.id
  json.title notice.title
  json.description notice.description
  json.published notice.published
  if notice.image.attached?
    json.image url_for notice.image
  end
end
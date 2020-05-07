json.array! @notices do |notice|
  json.id notice.id
  json.title notice.title
  json.description notice.description
  json.published notice.published
end
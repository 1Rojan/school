json.id @find_notice.id
json.title @find_notice.title
json.description @find_notice.description
json.published @find_notice.published
if @find_notice.image.attached?
  json.image url_for @find_notice.image
end
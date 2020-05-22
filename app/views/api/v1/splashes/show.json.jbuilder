
json.id @find_splash.id
json.name @find_splash.name
if @find_splash.image.attached?
  json.image @find_splash.image
else
  json.image nil
end

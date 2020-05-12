json.id @info.id
json.school_name @info.school_name
json.school_intro @info.school_intro
json.school_location @info.school_location
json.contact @info.contact
json.email @info.email
if @info.logo.attached?
  json.logo url_for @info.logo
end
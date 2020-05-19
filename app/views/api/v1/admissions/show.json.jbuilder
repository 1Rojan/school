
json.name @admission.name
json.dob @admission.dob
json.address @admission.address
json.phone @admission.phone
json.email @admission.email
json.father_name @admission.father_name
json.mother_name @admission.mother_name
json.mother_phone @admission.mother_phone
json.father_phone @admission.father_phone
json.admission_for @admission.admission_for
if @admission.image.attached?
  json.image @admission.image
end
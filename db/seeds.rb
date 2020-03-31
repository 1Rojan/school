# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

facilitiesImage = Dir[Rails.root.join('app/assets/images/facilities', '*.*')]
team_images = Dir[Rails.root.join('app/assets/images/team', '*.*')]
gallery_images = Dir[Rails.root.join('app/assets/images/gallery', '*.*')]

#
# admin = User.create(
#   email: 'admin@ideabreed.net',
#   password: 'password',
#   username: 'admin')
#
#   if admin.persisted?
#     puts 'admin created'
#   else
#     puts admin.errors.messages
#   end
#
# members = ['राम', 'श्याम', 'गीता', 'सीता' , 'हरि', 'कुमार']
# designations = ['संस्थापक अध्यक्ष', 'संस्थापक निर्देशक', 'अध्यक्ष', 'वित्त निर्देशक', 'कर्पोरेट निर्देशक', 'प्रिन्सिपल']
# count= 0
#
#  members.each do |member|
#   team = Team.create(
#   name: member,
#   designation: designations[count],
#   description: "#{member}"+' '+ 'is one of our member of our school who is very expertise on the field and has been helping out each member and students to make a bright future.'
#   )
#   count+=1
#
#   if team.persisted?
#     puts 'team created'
#   else
#     puts team.errors.messages
#   end
#   io_files1 = team_images.sample(1)
#
#   io_files1[0...1].each do |f|
#
#     image = File.open(f)
#
#     team.image.attach io: image, filename: f.split('/').last
#
#     image.close
#   end
# end
#
# facilities = ['पुस्तकालय', 'कम्प्युटर प्रयोगशाला', 'विद्यालयको गाडी', 'खेल मैदान', 'शैक्षिक भ्रमण', 'अतिरिक्त पाठ्यक्रम']
#
#  facilities.each do |facility|
#   facilities = Facility.create(
#     name: facility,
#     description: 'हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ |हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ |हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ |हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ |हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ |हामीले निरन्तर रुपमा यो सेवा उपलब्ध गराउदै अएका छौ | '
#   )
#
#   if facilities.persisted?
#     puts "facility created"
#   else
#     puts facilities.errors.messages
#   end
#
#   io_files1 = facilitiesImage.sample(1)
#
#   io_files1[0...1].each do |f|
#
#     image = File.open(f)
#
#     facilities.image.attach io: image, filename: f.split('/').last
#
#     image.close
#   end
# end
#
# 3.times do
#   notices = Notice.create(
#       title: '१२ औं / जेटीआई इन्टर स्कूल जेआर। खुला टेनिस चैम्पियनशिप',
#       description: 'हामी तपाइँलाई जानकारी गराउन चाहन्छौं कि स्कूलमा यो कार्यक्रम चाँडै आयोजित हुँदैछ। हामी तपाइँलाई जानकारी गराउन चाहन्छौं कि स्कूलमा यो कार्यक्रम चाँडै आयोजित हुँदैछ।',
#       published: Date.today
#   )
#    if notices.persisted?
#      puts "notice created"
#    else
#      notices.errors.messages
#    end
# end

6.times do
  galleries = Gallery.create(
      description: "Our school's gallery images",

  )
  io_files1 = gallery_images.sample(1)

  io_files1[0...1].each do |f|

    image = File.open(f)

    galleries.image.attach io: image, filename: f.split('/').last

    image.close
  end
  if galleries.persisted?
    puts "gallery created"
  else
    galleries.errors.messages
  end
end


about = About.create(
    title: 'विगतदेखि वर्तमान सम्म',
    description: 'तत्कालीन ग्रामविकास मन्त्री प्रेमप्रसाद आङ्दम्बेज्यूबाट २०१७ साल वैशाख १६ गते यस विद्यालयको शिलान्यास भए तापनि ०१८ चैत १७ गतेदेखि पठनपाठन आरम्भ भएको थियो ।
                 तत्कालीन ग्रामविकास मन्त्री प्रेमप्रसाद आङ्दम्बेज्यूबाट २०१७ साल वैशाख १६ गते यस विद्यालयको शिलान्यास भए तापनि ०१८ चैत १७ गतेदेखि पठनपाठन आरम्भ भएको थियो ।
                तत्कालीन ग्रामविकास मन्त्री प्रेमप्रसाद आङ्दम्बेज्यूबाट २०१७ साल वैशाख १६ गते यस विद्यालयको शिलान्यास भए तापनि ०१८ चैत १७ गतेदेखि पठनपाठन आरम्भ भएको थियो ।'
)
if about.persisted?
  puts "about created"
else
  about.errors.messages
end
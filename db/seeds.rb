User.destroy_all
Event.destroy_all
Ticket.destroy_all
Bookmark.destroy_all

#Users data
# 10.times do 
#     User.create(username: Faker::Name.unique.first_name, password_digest: "foobar")
# end

#event data with category, ticket, and bookmark data
# categories.each do |category|
#     10.times do
#     event = Event.create!(
#         title: Faker::Hipster.sentence,
#         category: category,
#         description: Faker::Lorem.paragraph(sentence_count: 2),
#         location: Faker::Address.state,
#         image_url: "coming soon",
#         date: Faker::Date.in_date_period,
#         price: rand(5..250),
#         tickets_remaining: rand(5..25),
#         capacity: rand(5..250)
#     )
#     10.times do |t|
#         Ticket.create!(
#             user_id: t+1,
#             event_id: event.id
#         )
#         end
#     end
# end
admin1 = User.create(username: "Princeton", password_digest: "password")
user1 = User.create(username: "username", password_digest: "password")
#categories data
categories = ["sports", "music", "social", "educational", "networking", "business"]
# TITLE/ tickets_remaining/PRICE/LOCATION/DATE/IMAGE_URL/
event1 = Event.create(
    title: "Weeknd After Hours Tour",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Jiffy Lube Live, Virginia",
    image_url: "https://static.billboard.com/files/media/02-the-weeknd-press-2019-cr-Nabil-Elderkin-billboard-1548-768x433.jpg",
    date: "November 2th, 2020",
    price: 125,
    tickets_remaining: rand(30..100),
    capacity: 100
)
event2 = Event.create(
    title: "Drake OVO Tour",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Verizon Center, Washington, DC",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSWySukB8lIE6v5jm9Wxe4ePoCE55XbFGaEng&usqp=CAU",
    date: "December 10th, 2020",
    price: 180,
    tickets_remaining: rand(30..50),
    capacity: 100
)
event3 = Event.create(
    title: "Taylor Swift: Revenge Tour",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Verizon Center, Washington, DC",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRUuv4knSBNfoVLtbir-GZLTjtSBMmKK8DHiA&usqp=CAU",
    date: "December 23th, 2020",
    price: 110,
    tickets_remaining: 15,
    capacity: 100
)
event4 = Event.create(
    title: "Ed Sheeran Live",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "U Street Music Hall Washington, DC",
    image_url: "https://i.dailymail.co.uk/1s/2020/06/06/09/29292290-8394277-image-a-1_1591433958117.jpg",
    date: "October 29th, 2020",
    price: 80,
    tickets_remaining: rand(30..100),
    capacity: 100
)
event5 = Event.create(
    title: "FUSE CLUB: TECHNO CLUB",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Club Glow Washington, DC",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F104115470%2F277508079182%2F1%2Foriginal.20200620-114355?h=230&w=460&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C200%2C720%2C360&s=831e3ea2158a4d1473b77dc23ef4d63d",
    date: "September 19th, 2020",
    price: rand(20..50),
    tickets_remaining: rand(80..150),
    capacity: 100
)
event6 = Event.create(
    title: "Justin Bieber on tour",
    category: "music",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Verizon Center Washington, DC",
    image_url: "https://i0.wp.com/theboothexp.com/wp-content/uploads/2016/01/justin-bieber.png?resize=501%2C358",
    date: "September 20th, 2020",
    price: 210,
    tickets_remaining: rand(30..100),
    capacity: 100
)

event7 = Event.create(
    title: "Virtual coffee with a developer",
    category: "social",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Rockville, MD",
    image_url: "https://static.billboard.com/files/media/02-the-weeknd-press-2019-cr-Nabil-Elderkin-billboard-1548-768x433.jpg",
    date: "November 2th, 2020",
    price: 1,
    tickets_remaining: rand(20..80),
    capacity: 100
)
event8 = Event.create(
    title: " The Animal Crossing Standup Comedy Show",
    category: "social",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Georgetown, Washington DC",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F102937900%2F34743739568%2F1%2Foriginal.20200608-063252?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C91%2C400%2C200&s=547fad629624025e15ca0b9c18762f57",
    date: "December 10th, 2020",
    price: 10,
    tickets_remaining: rand(30..50),
    capacity: 100
)
event9 = Event.create(
    title: "Interviewing Techniques Seminar",
    category: "social",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Northeast Washington, DC",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F91094371%2F286097280647%2F1%2Foriginal.20191016-144733?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C19%2C958%2C479&s=83ca5841cbbb6ae395cf23baa600401a",
    date: "September 23th, 2020",
    price: 5,
    tickets_remaining: 200,
    capacity: 100
)
event10 = Event.create(
    title: "Virtual Happy Hour hosted by Bar Chef",
    category: "social",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Navy Yard Washington, DC",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F108480193%2F406444420609%2F1%2Foriginal.20200813-113846?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C60%2C1280%2C640&s=f7730edd115ee3e452f836eb6c356851",
    date: "September 30th, 2020",
    price: 10,
    tickets_remaining: 60,
    capacity: 100
)
event11 = Event.create(
    title: "Measuring Dependency Freshness, Code and Fear",
    category: "social",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Adams Morgan Washington, DC",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F104115470%2F277508079182%2F1%2Foriginal.20200620-114355?h=230&w=460&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C200%2C720%2C360&s=831e3ea2158a4d1473b77dc23ef4d63d",
    date: "November 19th, 2020",
    price: 5,
    tickets_remaining: 15,
    capacity: 100
)

event12 = Event.create(
    title: "August Book Club Meeting: Silver Sparrow",
    category: "networking",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Fairfax, Virginia",
    image_url: "https://www.eventbrite.com/e/backyard-compost-basics-a-free-webinar-tickets-103866306920?aff=ebdssbonlinesearch",
    date: "October 20th, 2020",
    price: 15,
    tickets_remaining: 36,
    capacity: 100
)
event13 = Event.create(
    title: "The Art of Public Speaking: Seminar",
    category: "networking",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Adams Morgan, Virginia",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F106982958%2F438646301854%2F1%2Foriginal.20200502-193045?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=65%2C264%2C510%2C255&s=5afdd757cf19b0e5c1f0b91c030e1d75",
    date: "October 20th, 2020",
    price: 1,
    tickets_remaining: rand(70..100),
    capacity: 100
)
event14 = Event.create(
    title: "Building Your Business Through Storytelling",
    category: "networking",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Mclean, Virginia",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F107527197%2F72881418565%2F1%2Foriginal.20200716-170905?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=f38e29626633623747a8692f2e467541",
    date: "September 20th, 2020",
    price: 2,
    tickets_remaining: 36,
    capacity: 100
)
event15 = Event.create(
    title: "Virtual Job Fair Aug 26th, 2020",
    category: "networking",
    description: Faker::Lorem.paragraph(sentence_count: 2),
    location: "Ashburn, Virginia",
    image_url: "https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F100547922%2F32014549035%2F1%2Foriginal.20200219-231228?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=16%2C478%2C1894%2C947&s=ac7b254872386200cd4879e0489d2cbc",
    date: "Aug 26th, 2020",
    price: 1,
    tickets_remaining: rand(70..200),
    capacity: 100
)

ticket1 = Ticket.create(
    user_id: 1,
    event_id: 2
)
ticket2 = Ticket.create(
    user_id: 1,
    event_id: 4
)
ticket3 = Ticket.create(
    user_id: 1,
    event_id: 7
)
ticket4 = Ticket.create(
    user_id: 1,
    event_id: 10
)
User.destroy_all
Event.destroy_all
Ticket.destroy_all
Bookmark.destroy_all

#Users data
10.times do 
    User.create(username: Faker::Name.unique.first_name, password_digest: "foobar")
end
admin = User.create(username: "Princeton", password_digest: "foobar")

#categories data
categories = ["sports", "music", "social", "educational", "networking", "business"]

#event data with category, ticket, and bookmark data
categories.each do |category|
    10.times do
    event = Event.create!(
        title: Faker::Hipster.sentence,
        category: category,
        description: Faker::Lorem.paragraph(sentence_count: 2),
        location: Faker::Address.state,
        image_url: "coming soon",
        date: Faker::Date.in_date_period,
        price: rand(5..250),
        tickets_remaining: rand(5..25),
        capacity: rand(5..250)
    )
    10.times do |t|
        Ticket.create!(
            user_id: t+1,
            event_id: event.id
        )
        Bookmark.create!(
            user_id: t+1,
            event_id: event.id
        )
        end
    end
end
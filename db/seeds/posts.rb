puts 'Start inserting seed "pictures" ...'
User.limit(10).each do |user|
  picture = user.pictures.create(title: Faker::Hacker.say_something_smart, remote_image_urls: %w[https://picsum.photos/350/350/?random https://picsum.photos/350/350/?random])
  puts "picture#{picture.id} has created!"
end
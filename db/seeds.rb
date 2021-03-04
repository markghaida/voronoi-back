# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "markymark")

Tag.create(category_name: "Coding", image: "https://studio.uxpincdn.com/studio/wp-content/uploads/2020/02/BlogpostHeader_CodingLanguages_1200x600-1024x512.png.webp")

Tag.create(category_name: "Pet", image: "https://ny-petrescue.org/files/_cache/28514df6f91bde790e69ac2d9c6fa30b.jpg")

Tag.create(category_name: "Courses", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRusvmmkzWpTV7BAWePau8zkKJjb0GCUXNnsQ&usqp=CAU")

Tag.create(category_name: "Health & Fitness", image: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Galleries/10+Fitness+Tips/Muscle-confusion-is-the-only-way-to-go..jpg")

Tag.create(category_name: "Personal Finance", image: "https://www.finance-monthly.com/Finance-Monthly/wp-content/uploads/2019/09/An-In-Depth-Guide-to-Personal-Finance.jpg")

Tag.create(category_name: "Mindfulness", image: "https://cdn.mindful.org/Meditation-Mindfulness-1.jpg")

Tag.create(category_name: "Fashion", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")



Bookmark.create(url: "https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch", image: "https://i.ibb.co/8DGbH48/Coding-Category.png", h1: "Using Fetch - Web APIs | MDN", body: "The Fetch API provides a JavaScript interface for accessing and manipulating parts of the HTTP pipeline, such as requests and responses", score: 0, user_id: 1)

Bookmark.create(url: "https://www.petsbest.com/dog-owners-guide", image: "https://i.ibb.co/qdqXGJn/Pet-Category.png", h1: "New Dog Owner’s Guide by Pets Best", body: "The prospect of adding a new puppy to your family can be incredibly exciting. Most dog owners would agree that having a constant, loyal companion who loves them unconditionally brings a tremendous amount of joy to their lives", score: 0, user_id: 1)

Bookmark.create(url: "https://www.udemy.com/course/react-redux/?ranMID=39197&ranEAID=sQSGk8Sr3fw&ranSiteID=sQSGk8Sr3fw-DxZlpPRrOb7CRgPODE9hHQ&utm_source=aff-campaign&LSNPUBID=sQSGk8Sr3fw&utm_medium=udemyads", image: "https://i.ibb.co/gJpwn88/Courses-Category.png", h1: "Modern React with Redux Training Course | Udemy", body: "Build amazing single page applications with React JS and Redux. Master fundamental concepts behind structuring Redux applications", score: 0, user_id: 1)

Bookmark.create(url: "https://www.healthline.com/nutrition/ketogenic-diet-101", image: "https://i.ibb.co/tC7BfbF/Health-Fitness-Category.png", h1: "The Ketogenic Diet: A Detailed Beginner’s Guide to Keto", body: "The ketogenic diet (or keto diet, for short) is a low carb, high fat diet that offers many health benefits.", score: 0, user_id: 1)

Bookmark.create(url: "https://www.iwillteachyoutoberich.com/guides/ultimate-guide-to-personal-finance/part-0/#part1-money-mistakes-that-cost-you-millions", image: "https://i.ibb.co/gVSmqvX/Personal-Finance-Category.png", h1: "The Ultimate Guide to Personal Finance: Money Management Made Simple", body: "If you avoid making costly money mistakes, you can save hundreds of thousands – if not millions – of dollars over your lifetime. Knowing what NOT to do with our money is half the battle.", score: 0, user_id: 1)

Bookmark.create(url: "https://www.lifehack.org/848704/how-to-do-transcendental-meditation", image: "https://i.ibb.co/j5x6tWS/Mindfulness-Category.png", h1: "How to Do Transcendental Meditation (Step-by-Step Guide)", body: "Meditation was first developed in India many years ago (around 5000-3500 BCE). It took quite some time to become popular in the western world", score: 0, user_id: 1)

Bookmark.create(url: "https://www.stylesofman.com/mens-summer-fashion/", image: "https://i.ibb.co/8mFghTq/Fashion-Category.png", h1: "Men’s Summer Fashion: 2021 Style Trends", body: "With summer on the horizon, we can finally look forward to some much-deserved sunshine, beer gardens, and outdoor adventures", score: 0, user_id: 1)

BookmarkTag.create(bookmark_id: 1, tag_id: 1)
BookmarkTag.create(bookmark_id: 2, tag_id: 2)
BookmarkTag.create(bookmark_id: 3, tag_id: 3)
BookmarkTag.create(bookmark_id: 4, tag_id: 4)
BookmarkTag.create(bookmark_id: 5, tag_id: 5)
BookmarkTag.create(bookmark_id: 6, tag_id: 6)
BookmarkTag.create(bookmark_id: 7, tag_id: 7)
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "markymark")

Tag.create(category_name: "Coding", image: "https://studio.uxpincdn.com/studio/wp-content/uploads/2020/02/BlogpostHeader_CodingLanguages_1200x600-1024x512.png.webp")

Tag.create(category_name: "Pet", image: "https://ny-petrescue.org/files/_cache/28514df6f91bde790e69ac2d9c6fa30b.jpg")

Tag.create(category_name: "Courses", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRusvmmkzWpTV7BAWePau8zkKJjb0GCUXNnsQ&usqp=CAU")

Tag.create(category_name: "Health & Fitness", image: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Galleries/10+Fitness+Tips/Muscle-confusion-is-the-only-way-to-go..jpg")

Tag.create(category_name: "Personal Finance", image: "https://www.finance-monthly.com/Finance-Monthly/wp-content/uploads/2019/09/An-In-Depth-Guide-to-Personal-Finance.jpg")

Tag.create(category_name: "Mindfulness", image: "https://cdn.mindful.org/Meditation-Mindfulness-1.jpg")

Tag.create(category_name: "Fashion", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")

Tag.create(category_name: "Personal Growth", image: "https://cdn.mindful.org/Meditation-Mindfulness-1.jpg")

Tag.create(category_name: "Travel", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")

Tag.create(category_name: "Sweets", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")

Tag.create(category_name: "Medical", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")

Tag.create(category_name: "Gaming", image: "https://i.pinimg.com/736x/4a/91/a6/4a91a6b4f09c7df99a6352db06f7a701.jpg")

Tag.create(category_name: nil, image: "https://studio.uxpincdn.com/studio/wp-content/uploads/2020/02/BlogpostHeader_CodingLanguages_1200x600-1024x512.png.webp") 

Bookmark.create(url: "https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch", image: "https://i.ibb.co/8DGbH48/Coding-Category.png", h1: "Using Fetch - Web APIs | MDN", body: "The Fetch API provides a JavaScript interface for accessing and manipulating parts of the HTTP pipeline, such as requests and responses", score: 10, user_id: 1)

Bookmark.create(url: "https://www.petsbest.com/dog-owners-guide", image: "https://i.ibb.co/qdqXGJn/Pet-Category.png", h1: "New Dog Owner’s Guide by Pets Best", body: "The prospect of adding a new puppy to your family can be incredibly exciting. Most dog owners would agree that having a constant, loyal companion who loves them unconditionally brings a tremendous amount of joy to their lives", score: 10, user_id: 1)

Bookmark.create(url: "https://www.udemy.com/course/react-redux/?ranMID=39197&ranEAID=sQSGk8Sr3fw&ranSiteID=sQSGk8Sr3fw-DxZlpPRrOb7CRgPODE9hHQ&utm_source=aff-campaign&LSNPUBID=sQSGk8Sr3fw&utm_medium=udemyads", image: "https://i.ibb.co/gJpwn88/Courses-Category.png", h1: "Modern React with Redux Training Course | Udemy", body: "Build amazing single page applications with React JS and Redux. Master fundamental concepts behind structuring Redux applications", score: 5, user_id: 1)

Bookmark.create(url: "https://www.healthline.com/nutrition/ketogenic-diet-101", image: "https://i.ibb.co/tC7BfbF/Health-Fitness-Category.png", h1: "The Ketogenic Diet: A Detailed Beginner’s Guide to Keto", body: "The ketogenic diet (or keto diet, for short) is a low carb, high fat diet that offers many health benefits.", score: 30, user_id: 1)

Bookmark.create(url: "https://www.iwillteachyoutoberich.com/guides/ultimate-guide-to-personal-finance/part-0/#part1-money-mistakes-that-cost-you-millions", image: "https://i.ibb.co/gVSmqvX/Personal-Finance-Category.png", h1: "The Ultimate Guide to Personal Finance: Money Management Made Simple", body: "If you avoid making costly money mistakes, you can save hundreds of thousands – if not millions – of dollars over your lifetime. Knowing what NOT to do with our money is half the battle.", score: 10, user_id: 1)

Bookmark.create(url: "https://www.lifehack.org/848704/how-to-do-transcendental-meditation", image: "https://i.ibb.co/j5x6tWS/Mindfulness-Category.png", h1: "How to Do Transcendental Meditation (Step-by-Step Guide)", body: "Meditation was first developed in India many years ago (around 5000-3500 BCE). It took quite some time to become popular in the western world", score: 10, user_id: 1)

Bookmark.create(url: "https://www.stylesofman.com/mens-summer-fashion/", image: "https://i.ibb.co/8mFghTq/Fashion-Category.png", h1: "Men’s Summer Fashion: 2021 Style Trends", body: "With summer on the horizon, we can finally look forward to some much-deserved sunshine, beer gardens, and outdoor adventures", score: 100, user_id: 1)

Bookmark.create(url: "https://ashevillebeecharmer.com/honey-education/top-10-honeys-world/", image: "https://ashevillebeecharmer.com/wp-content/uploads/2016/03/sourwoods-teardrop.jpg", h1: "Top 10 Honeys in the World | Asheville Bee Charmers", body: "There’s no sweeter task than trying to determine the top 10 best honeys in the world. Our list include the best raw, pure, and infused honeys from across the globe.", score: 50, user_id: 1)

Bookmark.create(url: "https://www.salesrabbit.com/insights/top-success-tips-from-gary-vee", image: "https://www.salesrabbit.com/wp-content/uploads/2018/08/Vaynerchuck-version.png", h1: "Top Success Tips From Gary Vee | SalesRabbit", body: "There are few people as inspiring as Gary Vee. Here are some of our favorite quotes from him to help you skyrocket toward success.", score: 80, user_id: 1)


Bookmark.create(url: "https://www.healthline.com/health/home-remedies-for-cysts", image: "https://post.healthline.com/wp-content/uploads/2018/11/honey-1200x628-facebook.jpg", h1: "Home Remedies for Cysts: What Actually Works?", body: "The most reliable way to remove a cyst is to have your doctor do it. However, some studies suggest a few home remedies could help, such as apple cider vinegar and tea tree oil. More research is still necessary, but this is what we know so far.", score: 10, user_id: 1)

Bookmark.create(url: "https://www.exploringourglobe.com/explore/top-10-countries-to-visit-for-2020", image: "https://www.exploringourglobe.com/.image/t_share/MTcxNTU3MTg1ODI4OTU1NDk2/screenshot-2020-04-02-at-125136-pm.png", h1: "Top 10 Countries To Visit For 2020/2021 - Exploring Our Globe", body: "It's time to get planning the ultimate trip.", score: 25, user_id: 1)

Bookmark.create(url: "https://www.ranker.com/list/reasons-xbox-is-better-than-playstation/collin-flatt", image: "https://imgix.ranker.com/list_img_v2/10994/2670994/original/reasons-xbox-is-better-than-playstation?w=817&h=427&fm=jpg&q=50&fit=crop", h1: "15 Reasons Xbox Is Better Than PlayStation", body: "There are plenty of reasons why Xbox is better than PlayStation, even though the Sony disciples will try to convince you of otherwise. While Sony's ...", score: 75, user_id: 1)

Bookmark.create(url: "https://www.goliath.com/gaming/10-reasons-to-choose-xbox-one-over-playstation-4/", image: "https://www.goliath.com/gaming/10-reasons-to-choose-xbox-one-over-playstation-4/", h1: "10 Reasons To Choose Xbox One Over PlayStation 4 - Goliath", body: "Xbox is for the best and coolest people in the world. Except if your names 'Joe'.", score: 60, user_id: 1)



BookmarkTag.create(bookmark_id: 1, tag_id: 1)
BookmarkTag.create(bookmark_id: 2, tag_id: 2)
BookmarkTag.create(bookmark_id: 3, tag_id: 3)
BookmarkTag.create(bookmark_id: 4, tag_id: 4)
BookmarkTag.create(bookmark_id: 5, tag_id: 5)
BookmarkTag.create(bookmark_id: 6, tag_id: 6)
BookmarkTag.create(bookmark_id: 7, tag_id: 7)

BookmarkTag.create(bookmark_id: 8, tag_id: 10)
BookmarkTag.create(bookmark_id: 9, tag_id: 8)
BookmarkTag.create(bookmark_id: 10, tag_id: 6)
BookmarkTag.create(bookmark_id: 11, tag_id: 11)
BookmarkTag.create(bookmark_id: 12, tag_id: 9)
BookmarkTag.create(bookmark_id: 13, tag_id: 12)
BookmarkTag.create(bookmark_id: 14, tag_id: 12)

# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 2, score: 10)
# SecondaryScore.create(bookmark_a_id: 2, bookmark_b_id: 1, score: 10)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 3, score: 20)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 4, score: 30)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 5, score: 40)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 6, score: 50)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 7, score: 60)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 8, score:70)
# SecondaryScore.create(bookmark_a_id: 1, bookmark_b_id: 2, score: 10)
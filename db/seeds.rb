require 'random_data'

 # Create Posts
 50.times do

   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments

 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 # Create Questions

 100.times do
  Question.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    resolved: false
  )
end

 #Assignment 16
 puts "#{Post.count}"
 unique_post = Post.find_or_create_by(title: "Title-Unique", body: "Body-Unique")
 puts "#{Post.count}"

 puts "#{Comment.count}"
 unique_comment = Comment.find_or_create_by(post: unique_post, body: "Body-Unique")
 puts "#{Comment.count}"

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
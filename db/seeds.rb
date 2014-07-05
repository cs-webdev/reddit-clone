User.create email: "email@teste.com", password: "teste"

posts_list = [
 ["Post1", "Happy people of Reddit Clone, what are you tips and tricks for staying happy?"]
]

comments_post_list = [
 ["Appreciation is the first step. Appreciation of everything.", 45, 23],
 ["Every since I got back from Afghanistan, I told myself I would never be unappreciative again. In line at the pharmacy? At least I'm indoors. At work? At least I get to sit down. Even in the most rage filled situations, there is something to be appreciated.", 5, 2],
 ["I was driving yesterday and the way the sky looked with the clouds and the sun, it just looked gorgeous. I just thought to myself, what a wonderful time to be alive.", 4, 1],
 ["You'll appreciate it more once you visit China. Heard the air is so polluted there, you can directly look at the sun and still be unharmed.", 1, 4],
 ["That's insane, how are they dealing with that?", 2, 45],
 ["By squinting.", 0, 20],
 ["asdasdc", 200, 0],
 ["I love looking at a sunset. The part where the orange and the purple mix is beautiful.", 2300, 12]
]

posts_list.each do |title, body|
 post_created = Post.create(title: title, body: body)

 comments_post_list.each do |body, upvotes, downvotes|
   Comment.create(body: body, upvotes: upvotes, downvotes: downvotes, post: post_created)
 end
end

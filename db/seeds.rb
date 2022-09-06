puts "🌱 Seeding spices..."

# Seed your database here

arts = Art.create([
    {
      "title": "My ist Art",
      "image_url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQByYlehR3qT4hUWzQKDVDOMrNksj1_JUtYg&usqp=CAU",
      "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      "contact": "0712345678",
      "author": "Alex kim"
    },
    {
      "title": "My ist Art",
      "image_url": "https://cdn.pixabay.com/photo/2017/12/28/16/18/bicycle-3045580_960_720.jpg",
      "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      "contact": "0712345678",
      "author": "Alex kim"
    },
    {
      "title": "My ist Art",
      "image_url": "https://images.unsplash.com/photo-1617503752587-97d2103a96ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0d29ya3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      "contact": "0712345678",
      "author": "Alex kim"
    }

])

users = User.create(
    [
        {
            name:"Carlons Roldan"
        },

        {
            name:"Marijn Haverbeke"
        },
        {
            name:"Alex kim"
        }
     
    ]
)



reviews = Review.create(
    [
    {
        rating:8,
        comment:"awesome article!",
        art_id: 2,
        user_id: 101
    },
    {
        rating:7,
        comment:"nice read!",
        art_id: 6,
        user_id: 102
    },
    {
        rating:9,
        comment:"a masterpiece!",
        art_id: 8,
        user_id: 104
    }
    
]
)

puts "✅ Done seeding!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
verticals = Vertical.create([
  {
    name: "Health & Fitness"
  },
  {
    name: "Business"
  },
  {
    name: "Music"
  }
])

categories = Category.create([
  {
    name: "Booty & Abs",
    vertical_id: 1,
    state: "active"
  },
  {
   
    name: "Full Body",
    vertical_id: 1,
    state: "active"
  },
  {
    name: "Advertising",
    vertical_id: 2,
    state: "active"
  },
  {
    name: "Writing",
    vertical_id: 2,
    state: "active"
  },  
  {
    name: "Singing",
    vertical_id: 3,
    state: "active"
  },
  {
    name: "Music Fundamentals",
    vertical_id: 3,
    state: "active"
  }
])

courses = Course.create([
  {
    name: "Loose the Gutt, keep the Butt",
    author: "Anowa",
    category_id: 1,
    state: "active"
  },
  {
    name: "BrittneBabe Fitness Transformation",
    author: "Brittnebabe",
    category_id: 1,
    state: "active"
  },
  {
    name: "BTX: Body Transformation Extreme",
    author: "Barstarzz",
    category_id: 2,
    state: "active"
  },
  {
    name: "Facebook Funnel Marketing",
    author: "Russell Brunson",
    category_id: 2,
    state: "active"
  },
  {
    name: "Build a Wild Audience",
    author: "Tim Nilson",
    category_id: 3,
    state: "active"
  },
  {
    name: "Editorial Writing Secrets",
    author: "J. K. Rowling",
    category_id: 4,
    state: "active"
  },
  {
    name: "Scientific Writing",
    author: "Stephen Hawking",
    category_id: 4,
    state: "active"
  },
  {
    name: "Vocal Training 101",
    author: "Linkin Park",
    category_id: 5,
    state: "active"
  },
  {
    name: "Music Production",
    author: "Music Performance for Beginners",
    author: "Lady Gaga",
    category_id: 5,
    state: "active"
  },
  {
    name: "Learn the Piano",
    author: "Lang Lang",
    category_id: 6,
    state: "active"
  },
  {
    name: "Become a guitar hero",
    author: "Jimmy Page",
    category_id: 6,
    state: "active"
  }
])

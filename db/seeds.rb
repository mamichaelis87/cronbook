# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Profile.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all
Friendship.destroy_all
FriendRequest.destroy_all

User.create([
  { email: "mark@mark.mark",
    password: "badminton",
    username: "markyMark"
  },
  { email: "peter@peter.peter",
    password: "baseball",
    username: "slim_petey"
  },
  { email: "steve@steve.steve",
    password: "tennis",
    username: "falco"
  },
  { email: "char@char.char",
    password: "basketball",
    username: "charbone"
  },
  { email: "wes@wes.wes",
    password: "crossfit",
    username: "wes_the_best"
  },
  { email: "mac@mac.mac",
    password: "soccer",
    username: "diesel"
  },
  { email: "jared@jared.jared",
    password: "poetry",
    username: "jahboi"
  },
  { email: "marshall@marshall.marshall",
    password: "driving",
    username: "chic-fil-a_marsh"
  },
  { email: "roper@roper.roper",
    password: "beatss",
    username: "DJNVWLS"
  },
  { email: "burko@burko.burko",
    password: "golfer",
    username: "cuser_4_lyfe"
  },
  { email: "jeff@jeff.jeff",
    password: "football",
    username: "desert_jeff"
  }])

Profile.create([
  { 
    first_name: "Mark",
    last_name: "Michaelis",
    user: User.find_by(email: "mark@mark.mark")
  },
  { 
    first_name: "Peter",
    last_name: "Durant",
    user: User.find_by(email: "peter@peter.peter")
  },
  { 
    first_name: "Steve",
    last_name: "Falco",
    user: User.find_by(email: "steve@steve.steve")
  },
  { 
    first_name: "Charlie",
    last_name: "Carbone",
    user: User.find_by(email: "char@char.char")
  },
  { 
    first_name: "Wesley",
    last_name: "Suplit",
    user: User.find_by(email: "wes@wes.wes")
  },
  { 
    first_name: "Maccrae",
    last_name: "Monteith",
    user: User.find_by(email: "mac@mac.mac")
  },
  { 
    first_name: "Jared",
    last_name: "Billings",
    user: User.find_by(email: "jared@jared.jared")
  },
  { 
    first_name: "Marshall",
    last_name: "Sweers",
    user: User.find_by(email: "marshall@marshall.marshall")
  },
  { 
    first_name: "Jeffrey",
    last_name: "Kaday",
    user: User.find_by(email: "jeff@jeff.jeff")
  },
  { 
    first_name: "Andrew",
    last_name: "Roper",
    user: User.find_by(email: "roper@roper.roper")
  },
  { 
    first_name: "Kyle",
    last_name: "Burko",
    user: User.find_by(email: "burko@burko.burko")
  }
])

Post.create([
  {
    author: User.find_by(email: "mark@mark.mark"),
    body: "Welcome to CronBook peeps."
  }
])

Comment.create([
  {
    author: User.find_by(email: "peter@peter.peter"),
    post: Post.first,
    body: "Pumped to be here fellas."
  }
])

Like.create([
  {
    likable: Post.first,
    liker: User.last
  },
  {
    likable: Post.first,
    liker: User.second
  },
  {
    likable: Post.first,
    liker: User.third
  },
  {
    likable: Post.first,
    liker: User.fourth
  },
  {
    likable: Post.first,
    liker: User.fifth
  },
  {
    likable: Comment.first,
    liker: User.last
  },
  {
    likable: Comment.first,
    liker: User.offset(1).fifth
  },
  {
    likable: Comment.first,
    liker: User.offset(2).fifth
  }
])

Friendship.create([
  {
    user: User.first,
    friend: User.second
  },
  {
    user: User.first,
    friend: User.third
  },
  {
    user: User.first,
    friend: User.fourth
  }
])

FriendRequest.create([
  {
    user: User.first,
    friend: User.fifth
  },
  {
    user: User.third_to_last,
    friend: User.first
  },
  {
    user: User.second_to_last,
    friend: User.first
  },
  {
    user: User.last,
    friend: User.first
  }
])

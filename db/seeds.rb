# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
  { email: "mark@mark.mark",
    password: "baseball"
  },
  { email: "peter@peter.peter",
    password: "cornhole"
  },
  { email: "steve@steve.steve",
    password: "tennis"
  },
  { email: "char@char.char",
    password: "basketball"
  },
  { email: "wes@wes.wes",
    password: "crossfit"
  },
  { email: "mac@mac.mac",
    password: "soccer"
  },
  { email: "jared@jared.jared",
    password: "poetry"
  },
  { email: "marshall@marshall.marshall",
    password: "driving"
  },
  { email: "jeff@jeff.jeff",
    password: "cornhole"
  },
  { email: "roper@roper.roper",
    password: "beats"
  },
  { email: "burko@burko.burko",
    password: "golf"
  }
])
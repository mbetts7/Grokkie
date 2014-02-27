users = []
category = []
skill = []
roadmap = []
resources = []

users << User.create(username: 'mike7', email: 'mike@gmail.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Finn789', email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Ashton87', email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Zac0987', email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Ruby098', email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')

# users << User.create!(email: 'mbetts7@gmail.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')



# Programming/Javascript/Java-Java-Time/Resources
category << Category.create!(name: 'Programming', image_url: '<i class="fa fa-laptop fa-4x"></i>')

  skill << category[0].skills.create!(name: 'Javascript')
    # roadmaps for Javascript
    roadmap << skill[0].roadmaps.create!(title: "FIRST ROADMAP: The Real Deal Javascript Roadmap", 
      description: "Learning javascript is tough and it's especially difficult to get started", 
      user_id: 1)
        resources << roadmap[0].resources.create!(
          name: "FIRST RESOURCE: jQuery codecademy", 
          description: "Learn jQuery first, then learn javascript.  Much easier to start there.  Do all of codeacademy, it's great", 
          url: "http://www.codecademy.com/tracks/jquery",
          position_id: 1)
        resources << roadmap[0].resources.create!(
          name: "First two lessons of Code School", 
          description: "Just do the first two lessons, then come back to rest later", 
          url: "http://try.jquery.com/levels/1/challenges/1",
          position_id: 2)
        resources << roadmap[0].resources.create!(
          name: "Must understand variable scope", 
          description: "Variable scope is tough to wrap your mind around at first, start with this great blog post", 
          url: "http://webcache.googleusercontent.com/search?q=cache:_lxHrsb31vYJ:javascriptissexy.com/javascript-variable-scope-and-hoisting-explained/+&cd=1&hl=en&ct=clnk&gl=us",
          position_id: 3)
        resources << roadmap[0].resources.create!(
          name: "Understanding callbacks Part I", 
          description: "Read the first section of this blog post", 
          url: "http://recurial.com/programming/understanding-callback-functions-in-javascript/",
          position_id: 4)
        resources << roadmap[0].resources.create!(
          name: "Understanding callbacks Part II", 
          description: "With a brief intro, now read this article on callbacks", 
          url: "http://webcache.googleusercontent.com/search?q=cache:5iNPWfsEjXUJ:javascriptissexy.com/understand-javascript-callback-functions-and-use-them/+&cd=1&hl=en&ct=clnk&gl=us",
          position_id: 5)
        resources << roadmap[0].resources.create!(
          name: "What the heck is an object literal?", 
          description: "Often dealing with object literals in JS",
          url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Values,_variables,_and_literals#Object_literals",
          position_id: 6)
        resources << roadmap[0].resources.create!(
          name: "What is this??", 
          description: "Understanding variable scope of .this()",
          url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this",
          position_id: 7)
        resources << roadmap[0].resources.create!(
          name: "Closures Part I", 
          description: "Get a good grasp of closures",
          url: "http://webcache.googleusercontent.com/search?q=cache:T5mgE-xK3sgJ:javascriptissexy.com/understand-javascript-closures-with-ease/+&cd=1&hl=en&ct=clnk&gl=us",
          position_id: 8)
        resources << roadmap[0].resources.create!(
          name: "Closures Part II", 
          description: "Get a good grasp of closures",
          url: "http://stackoverflow.com/questions/111102/how-do-javascript-closures-work?rq=1",
          position_id: 9)
        resources << roadmap[0].resources.create!(
          name: "Closures Part III", 
          description: "Get a good grasp of closures",
          url: "http://jondavidjohn.com/blog/2011/09/javascript-closure-explained-using-events",
          position_id: 10)

    roadmap << skill[0].roadmaps.create!(
      title: "Journey to JS", 
      description: "This is how I learned JS really fast",
      user_id: 1)
    roadmap << skill[0].roadmaps.create!(
      title: "Exploring javascript", 
      description: "[description of roadmap]",
      user_id: 2)
    roadmap << skill[0].roadmaps.create!(
      title: "The easy way to learn JS", 
      description: "[description of roadmap]",
      user_id: 2)
    roadmap << skill[0].roadmaps.create!(
      title: "Roadmap 1", 
      description: "[description of roadmap]",
      user_id: 3)
    roadmap << skill[0].roadmaps.create!(
      title: "Roadmap 2", 
      description: "[description of roadmap]",
      user_id: 4)
    roadmap << skill[0].roadmaps.create!(
      title: "Roadmap 3", 
      description: "[description of roadmap]",
      user_id: 1)
    roadmap << skill[0].roadmaps.create!(
      title: "Roadmap 4", 
      description: "[description of roadmap]",
      user_id: 5)

  skill << category[0].skills.create!(name: 'Ruby')
    roadmap << skill[1].roadmaps.create!(
      title: "Rubilicious", 
      description: "This is how I learned Ruby really fast",
      user_id: 3)
    roadmap << skill[1].roadmaps.create!(
      title: "Exploring Ruby", 
      description: "[description of roadmap]",
      user_id: 1)
    roadmap << skill[1].roadmaps.create!(
      title: "The easy way to learn Ruby", 
      description: "[description of roadmap]",
      user_id: 5)

  skill << category[0].skills.create!(name: 'Rails')
    roadmap << skill[2].roadmaps.create!(
      title: "Rails mastery", 
      description: "This is how I learned Ruby really fast",
      user_id: 2)
    roadmap << skill[2].roadmaps.create!(
      title: "Exploring Rails", 
      description: "[description of roadmap]",
      user_id: 3)
    roadmap << skill[2].roadmaps.create!(
      title: "The easy way to learn Rails", 
      description: "[description of roadmap]",
      user_id: 4)

  skill << category[0].skills.create!(name: 'CSS')
   roadmap << skill[3].roadmaps.create!(
      title: "CSS mastery", 
      description: "This is how I learned CSS really fast",
      user_id: 1)
    roadmap << skill[3].roadmaps.create!(
      title: "Exploring CSS", 
      description: "[description of roadmap]",
      user_id: 2)
    roadmap << skill[3].roadmaps.create!(
      title: "The easy way to learn CSS", 
      description: "[description of roadmap]",
      user_id: 5)

  skill << category[0].skills.create!(name: 'Python')
   roadmap << skill[4].roadmaps.create!(
      title: "Python mastery", 
      description: "This is how I learned Python really fast",
      user_id: 4)
    roadmap << skill[4].roadmaps.create!(
      title: "Exploring Python", 
      description: "[description of roadmap]",
      user_id: 3)
    roadmap << skill[4].roadmaps.create!(
      title: "The easy way to learn Python", 
      description: "[description of roadmap]",
      user_id: 1)

 
# more categories and skills for display purposes
category << Category.create!(name: 'Fitness', image_url: '<i class="fa fa-dribbble fa-4x"></i>')

  skill << category[1].skills.create!(name: 'Cross-fit')
    roadmap << skill[5].roadmaps.create!(
      title: "Crossfit mastery", 
      description: "This is how I learned to lift really heavy stuff",
      user_id: 2)
    roadmap << skill[5].roadmaps.create!(
      title: "Getting ripped with Crossfit", 
      description: "[description of roadmap]",
      user_id: 4)
    roadmap << skill[5].roadmaps.create!(
      title: "The easy way to learn Crossfit", 
      description: "[description of roadmap]",
      user_id: 5)

  skill << category[1].skills.create!(name: 'Bull riding')
    roadmap << skill[6].roadmaps.create!(
      title: "Rodeo master", 
      description: "This is how I learned to not fall off when riding a bull",
      user_id: 1)
    roadmap << skill[6].roadmaps.create!(
      title: "Buckin' bronco", 
      description: "[description of roadmap]",
      user_id: 3)
    roadmap << skill[6].roadmaps.create!(
      title: "The easy way to learn bull-riding", 
      description: "[description of roadmap]",
      user_id: 2)

  # skill << category[1].skills.create!(name: 'Body-Building')

category << Category.create!(name: 'Cooking', image_url: '<i class="fa fa-cutlery fa-4x"></i>')

  skill << category[2].skills.create!(name: 'Water Boiling')
    roadmap << skill[7].roadmaps.create!(
      title: "Boiling water like a true chef", 
      description: "This is how I learned to boil stuff",
      user_id: 1)
    roadmap << skill[7].roadmaps.create!(
      title: "Boiling point", 
      description: "[description of roadmap]",
      user_id: 2)
    roadmap << skill[7].roadmaps.create!(
      title: "The easy way to learn how to boil water", 
      description: "[description of roadmap]",
      user_id: 3)

  skill << category[2].skills.create!(name: 'Deep Frying')
    roadmap << skill[8].roadmaps.create!(
      title: "How to learn to fry to a perfect golden brown", 
      description: "This is how I learned to make fried goodness",
      user_id: 4)
    roadmap << skill[8].roadmaps.create!(
      title: "Beware the smoke point: Deep-frying", 
      description: "[description of roadmap]",
      user_id: 5)
    roadmap << skill[8].roadmaps.create!(
      title: "McDonald's has nothing on me and my french fries", 
      description: "[description of roadmap]",
      user_id: 1)
  # skill << category[2].skills.create!(name: 'Stir Fry')
  # skill << category[2].skills.create!(name: 'Salad Making')
  

category << Category.create!(name: 'Languages', image_url: '<i class="fa fa-comment fa-4x"></i>')

  skill << category[3].skills.create!(name: 'English')
    roadmap << skill[9].roadmaps.create!(
      title: "Me talk pretty", 
      description: "This is how I learned to speak English",
      user_id: 2)
    roadmap << skill[9].roadmaps.create!(
      title: "I do grammar good", 
      description: "[description of roadmap]",
      user_id: 3)
    roadmap << skill[9].roadmaps.create!(
      title: "The Queen's English", 
      description: "[description of roadmap]",
      user_id: 4)
  # skill << category[3].skills.create!(name: 'Spanish')
  # skill << category[3].skills.create!(name: 'French')
  # skill << category[3].skills.create!(name: 'German')

category << Category.create!(name: 'Sciences', image_url: ' <i class="fa fa-flask fa-4x"></i>')

  skill << category[4].skills.create!(name: 'Chemistry')
     roadmap << skill[10].roadmaps.create!(
      title: "Molecules and whatnot", 
      description: "This is how I learned about molecules",
      user_id: 5)
    roadmap << skill[10].roadmaps.create!(
      title: "Covalent Bonds", 
      description: "[description of roadmap]",
      user_id: 1)
    roadmap << skill[10].roadmaps.create!(
      title: "Organic Chemistry", 
      description: "Hell on earth but it works",
      user_id: 2)
  # skill << category[4].skills.create!(name: 'Biology')

category << Category.create!(name: 'Math', image_url: '<i class="fa fa-superscript fa-4x"></i>')

   skill << category[5].skills.create!(name: 'Algebra')
     roadmap << skill[11].roadmaps.create!(
        title: "Learn algebra", 
        description: "This is how I learned algebra",
        user_id: 3)
     roadmap << skill[11].roadmaps.create!(
        title: "x is equal to y", 
        description: "[description of roadmap]",
        user_id: 4)
     roadmap << skill[11].roadmaps.create!(
        title: "Algebra master", 
        description: "I know Algebra",
        user_id: 5)
#   skill << category[5].skills.create!(name: 'Calculus')
#   skill << category[5].skills.create!(name: 'Geometry')

category << Category.create!(name: 'Crafts', image_url:'<i class="fa fa-tint fa-4x"></i>')
  skill << category[6].skills.create!(name: 'Knitting')
     roadmap << skill[12].roadmaps.create!(
        title: "Learn how to knit", 
        description: "This is how I learned to knit",
        user_id: 1)
     roadmap << skill[12].roadmaps.create!(
        title: "I love yarn - you will too!", 
        description: "[description of roadmap]",
        user_id: 2)
     roadmap << skill[12].roadmaps.create!(
        title: "Knit like your grandma!", 
        description: "Scarves and sweaters galore",
        user_id: 3)


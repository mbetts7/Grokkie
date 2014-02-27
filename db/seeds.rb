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
users << User.create(username: 'Bob39', email: 'bob39@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Dave123', email: 'dave123@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'Cal2014', email: 'cal2014@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'bkyln112', email: 'bklyn112@rhyta.com', password: 'password', password_confirmation: 'password')
users << User.create(username: 'george1', email: 'george1@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'mbetts7@gmail.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')



# Programming/Javascript
category << Category.create!(name: 'Programming', image_url: '<i class="fa fa-laptop fa-5x"></i>')

  skill << category[0].skills.create!(name: 'Javascript')
    # Javascript Roadmap 1
    roadmap << skill[0].roadmaps.create!(
      title: "The Real Deal Javascript Roadmap", 
      description: "Learning Javascript is tough and it's especially difficult to get started, but these resources will get you there", 
      user_id: 1)
        resources << roadmap[0].resources.create!(
          name: "jQuery codecademy", 
          description: "Complete the whole jQuery track before you attempt straight Javascript", 
          url: "http://www.codecademy.com/tracks/jquery",
          position_id: 1)
        resources << roadmap[0].resources.create!(
          name: "First two lessons of jQuery in Code School", 
          description: "Just do the first two lessons, then come back to the rest later", 
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
          name: "What is 'this'??", 
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

    # Javascript Roadmap 2   
    roadmap << skill[0].roadmaps.create!(
      title: "Journey to JS", 
      description: "This is how I learned JS really fast",
      user_id: 2)
        resources << roadmap[1].resources.create!(
          name: "Javascript Tutorialspoint", 
          description: "Complete the whole jQuery track before you attempt straight Javascript", 
          url: "http://www.tutorialspoint.com/javascript/index.htm",
          position_id: 1)
        resources << roadmap[1].resources.create!(
          name: "Javascript Quickstart Guide", 
          description: "Helpful Javascript Quickstart guide", 
          url: "http://searchdomino.techtarget.com/tutorial/JavaScript-Learning-Guide",
          position_id: 2)
        resources << roadmap[1].resources.create!(
          name: "Ajaxian Javascript Blog Posts", 
          description: "Varied collection of blogs about Javascript", 
          url: "http://ajaxian.com/by/topic/javascript",
          position_id: 3)

    # Javascript Roadmap 3
    roadmap << skill[0].roadmaps.create!(
      title: "Exploring javascript", 
      description: "Dipping my toes into Javascript",
      user_id: 3)
        resources << roadmap[2].resources.create!(
          name: "Javascript in Codecademy", 
          description: "The first few modules are helpful for getting JS syntax", 
          url: "http://www.codecademy.com/tracks/javascript",
          position_id: 1)
        resources << roadmap[2].resources.create!(
          name: "Javascript Tutorial from Brown University", 
          description: "CS Department at Brown University craeted a JS tutorial", 
          url: "http://cs.brown.edu/courses/bridge/1998/res/javascript/javascript-tutorial.html",
          position_id: 2)
        resources << roadmap[2].resources.create!(
          name: "Javascript Tutorial in 30mins", 
          description: "30-min JS tutorial video", 
          url: "http://www.youtube.com/watch?v=_cLvpJY2deo",
          position_id: 3)
        resources << roadmap[2].resources.create!(
          name: "Javascript Codeschool", 
          description: "Free codeschool JS tutorial", 
          url: "https://www.codeschool.com/courses/javascript-road-trip-part-1",
          position_id: 4)

    # Javascript Roadmap 4    
    roadmap << skill[0].roadmaps.create!(
      title: "The easy way to learn JS", 
      description: "The path I took to learn JS",
      user_id: 4)
        resources << roadmap[3].resources.create!(
          name: "Javascript in Codecademy- Part 1", 
          description: "The first few modules are helpful for getting JS syntax", 
          url: "http://www.codecademy.com/tracks/javascript",
          position_id: 1)
         resources << roadmap[3].resources.create!(
          name: "jQuery codecademy", 
          description: "Complete the whole jQuery track before you attempt straight Javascript", 
          url: "http://www.codecademy.com/tracks/jquery",
          position_id: 2)
         resources << roadmap[3].resources.create!(
          name: "Javascript in Codecademy- Part 1", 
          description: "Complete the whole jQuery track before you attempt straight Javascript", 
          url: "https://www.codeschool.com/courses/javascript-road-trip-part-1",
          position_id: 3)
         resources << roadmap[3].resources.create!(
          name: "Javascript in Codecademy- Part 2", 
          description: "Complete the whole jQuery track before you attempt straight Javascript", 
          url: "https://www.codeschool.com/courses/javascript-road-trip-part-2",
          position_id: 4)

    roadmap << skill[0].roadmaps.create!(
      title: "Javascript", 
      description: "[description of roadmap]",
      user_id: 5)
    roadmap << skill[0].roadmaps.create!(
      title: "Javascript Funtime now", 
      description: "[description of roadmap]",
      user_id: 6)
    roadmap << skill[0].roadmaps.create!(
      title: "Javascript is difficult but doable", 
      description: "[description of roadmap]",
      user_id: 7)
    roadmap << skill[0].roadmaps.create!(
      title: "Javascript ninja", 
      description: "[description of roadmap]",
      user_id: 8)

  # Programming/Ruby
  skill << category[0].skills.create!(name: 'Ruby')

  #Ruby Roadmap 1
    roadmap << skill[1].roadmaps.create!(
      title: "Rubilicious", 
      description: "This is how I learned Ruby really fast",
      user_id: 9)
        resources << roadmap[4].resources.create!(
          name: "Ruby in Codecademy", 
          description: "This is a great intro to Ruby and its syntax", 
          url: "http://www.codecademy.com/tracks/ruby",
          position_id: 1)
        resources << roadmap[4].resources.create!(
          name: "Ruby in Codescool", 
          description: "Another good controlled environment to learn basic Ruby", 
          url: "https://www.codeschool.com/courses/try-ruby",
          position_id: 2)
        resources << roadmap[4].resources.create!(
          name: "Ruby Docs - RTFD", 
          description: "It is all about the docs - refer to this OFTEN", 
          url: "http://www.ruby-doc.org/",
          position_id: 3)
        resources << roadmap[4].resources.create!(
          name: "Ruby Rogues Podcast 'How to Learn'", 
          description: "Listen to this podcast for real-life programmer suggestions on how to learn Ruby", 
          url: "http://rubyrogues.com/131-rr-how-to-learn/",
          position_id: 4)

    # Ruby Roadmap 2    
    roadmap << skill[1].roadmaps.create!(
      title: "Exploring Ruby", 
      description: "These resources worked for me!",
      user_id: 10)
        resources << roadmap[5].resources.create!(
          name: "Ruby Track on Codecademy", 
          description: "This track really helped me nail down syntax", 
          url: "http://www.codecademy.com/tracks/ruby",
          position_id: 1)
        resources << roadmap[5].resources.create!(
          name: "Ruby in Codescool", 
          description: "A similar intro to Ruby with slightly different methodology than Codecademy", 
          url: "https://www.codeschool.com/courses/try-ruby",
          position_id: 2)
        resources << roadmap[5].resources.create!(
          name: "Ruby Docs!!!", 
          description: "This is the ultimate list of what Ruby can do!", 
          url: "http://www.ruby-doc.org/",
          position_id: 3)

    # Ruby Roadmap 3  
    roadmap << skill[1].roadmaps.create!(
      title: "Familiarize yourself with Ruby", 
      description: "Get a good foundation for Ruby and Ruby on Rails",
      user_id: 1)
        resources << roadmap[6].resources.create!(
          name: "20-minute Ruby tutorial", 
          description: "Quick intro to Ruby", 
          url: "https://www.ruby-lang.org/en/documentation/quickstart/",
          position_id: 1)
        resources << roadmap[6].resources.create!(
          name: "Codeacamy Ruby track", 
          description: "Codecademy exercises to learn Ruby syntax", 
          url: "http://www.codecademy.com/tracks/ruby",
          position_id: 2)
        resources << roadmap[6].resources.create!(
          name: "Quick interactive tutorial for Ruby", 
          description: "Play around with Ruby syntax", 
          url: "http://tryruby.org/levels/1/challenges/0",
          position_id: 3)
        resources << roadmap[6].resources.create!(
          name: "A Beginner's Guide to Ruby", 
          description: "Great article describing Ruby basics", 
          url: "http://coding.smashingmagazine.com/2012/05/24/beginners-guide-ruby/",
          position_id: 4)

  skill << category[0].skills.create!(name: 'Rails')
  #Rails Roadmap 1
    roadmap << skill[2].roadmaps.create!(
      title: "Rails mastery", 
      description: "This is how I learned Ruby really fast",
      user_id: 2)
        resources << roadmap[7].resources.create!(
          name: "Rails Tutorial by Michael Hartl", 
          description: "Assuming you have a basic foundation in Ruby, this is the ultimate tutorial for getting started in Rails", 
          url: "http://ruby.railstutorial.org/",
          position_id: 1)
        resources << roadmap[7].resources.create!(
          name: "One Month Rails Tutorial", 
          description: "$99 month-long self-drive tutorial", 
          url: "https://onemonthrails.com/",
          position_id: 2)
        resources << roadmap[7].resources.create!(
          name: "Ruby on Rails Guides", 
          description: "This site serves as documentation while carrying out the creation of a simple web app", 
          url: "http://guides.rubyonrails.org/",
          position_id: 3)

    #Rails Roadmap 2
    roadmap << skill[2].roadmaps.create!(
      title: "Exploring Rails", 
      description: "Solid foundation for learning Rails",
      user_id: 2)
        resources << roadmap[8].resources.create!(
          name: "Jump Start Rails", 
          description: "Spend one weekend going through this $19 tutorial to get up to speed ", 
          url: "https://learnable.com/books/jsrails1",
          position_id: 1)
        resources << roadmap[8].resources.create!(
          name: "Build a Rails app for practice", 
          description: "A great video that walks you through building a simple Rails app", 
          url: "https://learnable.com/courses/build-your-first-rails-app-2784",
          position_id: 2)
        resources << roadmap[8].resources.create!(
          name: "Learn Ruby on Rails tutorial", 
          description: "Great text-based Rails intro tutorial", 
          url: "https://learnable.com/courses/build-your-first-rails-app-2784",
          position_id: 3)

    #Rails Roadmap 3
    roadmap << skill[2].roadmaps.create!(
      title: "The easy way to learn Rails", 
      description: "[description of roadmap]",
      user_id: 3)

  skill << category[0].skills.create!(name: 'CSS')

  #CSS Roadmap 1
   roadmap << skill[3].roadmaps.create!(
      title: "CSS mastery", 
      description: "This is how I learned CSS really fast",
      user_id: 4)
        resources << roadmap[9].resources.create!(
          name: "What is CSS?", 
          description: "Wikipedia article to explain CSS", 
          url: "http://en.wikipedia.org/wiki/Cascading_Style_Sheets",
          position_id: 1)
        resources << roadmap[9].resources.create!(
          name: "W3 School for CSS", 
          description: "Use this link for reference for CSS syntax ", 
          url: "http://www.w3schools.com/css/",
          position_id: 2)
        resources << roadmap[9].resources.create!(
          name: "CSS Generator", 
          description: "Experiment with CSS in real-time.  I felt this really cemented my understanding.", 
          url: "http://css3generator.com/",
          position_id: 3)

  #CSS Roadmap 2
    roadmap << skill[3].roadmaps.create!(
      title: "Exploring CSS", 
      description: "You'll style like a pro after following this roadmap",
      user_id: 5)
        resources << roadmap[10].resources.create!(
          name: "CSS Tricks", 
          description: "Website that helps you make stuff look cool", 
          url: "http://css-tricks.com/",
          position_id: 1)
        resources << roadmap[10].resources.create!(
          name: "Codecademy Web Track", 
          description: "If you're familiar with HTML, just move into the CSS modules", 
          url: "http://www.codecademy.com/tracks/web",
          position_id: 2)
        resources << roadmap[10].resources.create!(
          name: "General Assembly DASH CSS Robot", 
          description: "Really fun exercise to practices your CSS skils", 
          url: "https://dash.generalassemb.ly/projects/cotbots-1",
          position_id: 3)

  #CSS Roadmap 3
    roadmap << skill[3].roadmaps.create!(
      title: "The easy way to learn CSS", 
      description: "This roadmap will allow you to apply simple but impressive CSS to your site",
      user_id: 6)

  skill << category[0].skills.create!(name: 'Python')
   roadmap << skill[4].roadmaps.create!(
      title: "Python mastery", 
      description: "This is how I learned Python really fast",
      user_id: 7)
    roadmap << skill[4].roadmaps.create!(
      title: "Advanced Python", 
      description: "Once I had a good foundation, I used this roadmap to take it to the next level",
      user_id: 8)
    roadmap << skill[4].roadmaps.create!(
      title: "The easy way to learn Python", 
      description: "[description of roadmap]",
      user_id: 9)

 
# more categories and skills for display purposes
category << Category.create!(name: 'Fitness', image_url: '<i class="fa fa-dribbble fa-5x"></i>')

  skill << category[1].skills.create!(name: 'Cross-fit')
    roadmap << skill[5].roadmaps.create!(
      title: "Crossfit mastery", 
      description: "This is how I learned to lift really heavy stuff",
      user_id: 10)
    roadmap << skill[5].roadmaps.create!(
      title: "Getting ripped with Crossfit", 
      description: "[description of roadmap]",
      user_id: 1)
    roadmap << skill[5].roadmaps.create!(
      title: "The easy way to learn Crossfit", 
      description: "[description of roadmap]",
      user_id: 2)

  skill << category[1].skills.create!(name: 'Bull riding')
    roadmap << skill[6].roadmaps.create!(
      title: "Rodeo master", 
      description: "This is how I learned to not fall off when riding a bull",
      user_id: 3)
    roadmap << skill[6].roadmaps.create!(
      title: "Buckin' bronco", 
      description: "[description of roadmap]",
      user_id: 4)
    roadmap << skill[6].roadmaps.create!(
      title: "The easy way to learn bull-riding", 
      description: "[description of roadmap]",
      user_id: 5)

  # skill << category[1].skills.create!(name: 'Body-Building')

category << Category.create!(name: 'Cooking', image_url: '<i class="fa fa-cutlery fa-5x"></i>')

  skill << category[2].skills.create!(name: 'Water Boiling')
    roadmap << skill[7].roadmaps.create!(
      title: "Boiling water like a true chef", 
      description: "This is how I learned to boil stuff",
      user_id: 6)
    roadmap << skill[7].roadmaps.create!(
      title: "Boiling Water: What is the boiling point", 
      description: "[description of roadmap]",
      user_id: 7)
    roadmap << skill[7].roadmaps.create!(
      title: "The easy way to learn how to boil water", 
      description: "[description of roadmap]",
      user_id: 8)

  skill << category[2].skills.create!(name: 'Deep Frying')
    roadmap << skill[8].roadmaps.create!(
      title: "How to learn to fry to a perfect golden brown", 
      description: "This is how I learned to make fried goodness",
      user_id: 9)
    roadmap << skill[8].roadmaps.create!(
      title: "Beware the smoke point: Deep-frying", 
      description: "[description of roadmap]",
      user_id: 10)
    roadmap << skill[8].roadmaps.create!(
      title: "McDonald's has nothing on me and my french fries", 
      description: "[description of roadmap]",
      user_id: 1)
  # skill << category[2].skills.create!(name: 'Stir Fry')
  # skill << category[2].skills.create!(name: 'Salad Making')
  

category << Category.create!(name: 'Languages', image_url: '<i class="fa fa-comment fa-5x"></i>')

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

category << Category.create!(name: 'Sciences', image_url: ' <i class="fa fa-flask fa-5x"></i>')

  skill << category[4].skills.create!(name: 'Chemistry')
     roadmap << skill[10].roadmaps.create!(
      title: "Molecules and whatnot", 
      description: "This is how I learned about molecules",
      user_id: 5)
    roadmap << skill[10].roadmaps.create!(
      title: "Covalent Bonds", 
      description: "[description of roadmap]",
      user_id: 6)
    roadmap << skill[10].roadmaps.create!(
      title: "Organic Chemistry", 
      description: "Hell on earth but it works",
      user_id: 7)
  # skill << category[4].skills.create!(name: 'Biology')

category << Category.create!(name: 'Math', image_url: '<i class="fa fa-superscript fa-5x"></i>')

   skill << category[5].skills.create!(name: 'Algebra')
     roadmap << skill[11].roadmaps.create!(
        title: "Learn algebra", 
        description: "This is how I learned algebra",
        user_id: 8)
     roadmap << skill[11].roadmaps.create!(
        title: "x is equal to y", 
        description: "[description of roadmap]",
        user_id: 9)
     roadmap << skill[11].roadmaps.create!(
        title: "Algebra master", 
        description: "I know Algebra",
        user_id: 10)
#   skill << category[5].skills.create!(name: 'Calculus')
#   skill << category[5].skills.create!(name: 'Geometry')

category << Category.create!(name: 'Crafts', image_url:'<i class="fa fa-tint fa-5x"></i>')
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


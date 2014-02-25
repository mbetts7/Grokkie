users = []
category = []
skill = []
roadmap = []
resources = []

# users << User.create(username: 'mbetts7', email: 'mbetts7@gmail.com', password: 'password', password_confirmation: 'password')
# users << User.create(username: 'Finn789', email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create(username: 'Ashton87', email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
# users << User.create(username: 'Zac0987', email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create(username: 'Ruby098', email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')

# users << User.create!(email: 'mbetts7@gmail.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'FinnMurray@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'AshtonRide@jourrapide.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'ZacChave@rhyta.com', password: 'password', password_confirmation: 'password')
# users << User.create!(email: 'RubySpain@jourrapide.com', password: 'password', password_confirmation: 'password')



# Programming/Javascript/Java-Java-Time/Resources
category << Category.create!(name: 'Programming')
  skill << category[0].skills.create!(name: 'Javascript')
    # roadmaps for Javascript
    roadmap << skill[0].roadmaps.create!(title: "FIRST ROADMAP: The Real Deal Javascript Roadmap", 
      description: "Learning javascript is tough and it's especially difficult to get started")
        resources << roadmap[0].resources.create!(
          name: "FIRST RESOURCE: jQuery codecademy", 
          description: "Learn jQuery first, then learn javascript.  Much easier to start there.  Do all of codeacademy, it's great", 
          url: "http://www.codecademy.com/tracks/jquery")
        resources << roadmap[0].resources.create!(
          name: "First two lessons of Code School", 
          description: "Just do the first two lessons, then come back to rest later", 
          url: "http://try.jquery.com/levels/1/challenges/1")
        resources << roadmap[0].resources.create!(
          name: "Must understand variable scope", 
          description: "Variable scope is tough to wrap your mind around at first, start with this great blog post", 
          url: "http://webcache.googleusercontent.com/search?q=cache:_lxHrsb31vYJ:javascriptissexy.com/javascript-variable-scope-and-hoisting-explained/+&cd=1&hl=en&ct=clnk&gl=us")
        resources << roadmap[0].resources.create!(
          name: "Understanding callbacks Part I", 
          description: "Read the first section of this blog post", 
          url: "http://recurial.com/programming/understanding-callback-functions-in-javascript/")
        resources << roadmap[0].resources.create!(
          name: "Understanding callbacks Part II", 
          description: "With a brief intro, now read this article on callbacks", 
          url: "http://webcache.googleusercontent.com/search?q=cache:5iNPWfsEjXUJ:javascriptissexy.com/understand-javascript-callback-functions-and-use-them/+&cd=1&hl=en&ct=clnk&gl=us")
        resources << roadmap[0].resources.create!(
          name: "What the heck is an object literal?", 
          description: "Often dealing with object literals in JS",
          url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Values,_variables,_and_literals#Object_literals")
        resources << roadmap[0].resources.create!(
          name: "What is this??", 
          description: "Understanding variable scope of .this()",
          url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this")
        resources << roadmap[0].resources.create!(
          name: "Closures Part I", 
          description: "Get a good grasp of closures",
          url: "http://webcache.googleusercontent.com/search?q=cache:T5mgE-xK3sgJ:javascriptissexy.com/understand-javascript-closures-with-ease/+&cd=1&hl=en&ct=clnk&gl=us")
        resources << roadmap[0].resources.create!(
          name: "Closures Part II", 
          description: "Get a good grasp of closures",
          url: "http://stackoverflow.com/questions/111102/how-do-javascript-closures-work?rq=1")
        resources << roadmap[0].resources.create!(
          name: "Closures Part III", 
          description: "Get a good grasp of closures",
          url: "http://jondavidjohn.com/blog/2011/09/javascript-closure-explained-using-events")

    roadmap << skill[0].roadmaps.create!(
      title: "Journey to JS", 
      description: "This is how I learned JS really fast")
    roadmap << skill[0].roadmaps.create!(
      title: "Exploring javascript", 
      description: "[description of roadmap]")
    roadmap << skill[0].roadmaps.create!(
      title: "The easy way to learn JS", 
      description: "[description of roadmap]")
    roadmap << skill[0].roadmaps.create!(
      title: "[roadmap title]", 
      description: "[description of roadmap]")
    roadmap << skill[0].roadmaps.create!(
      title: "[roadmap title]", 
      description: "[description of roadmap]")
    roadmap << skill[0].roadmaps.create!(
      title: "[roadmap title]", 
      description: "[description of roadmap]")
    roadmap << skill[0].roadmaps.create!(
      title: "[roadmap title]", 
      description: "[description of roadmap]")
  skill << category[0].skills.create!(name: 'Ruby')
  skill << category[0].skills.create!(name: 'Rails')
  skill << category[0].skills.create!(name: 'CSS')
  skill << category[0].skills.create!(name: 'Getting Started in Programming')
  skill << category[0].skills.create!(name: 'Python')

 
# more categories and skills for display purposes
category << Category.create!(name: 'Fitness')
  skill << category[1].skills.create!(name: 'Cross-fit')
  skill << category[1].skills.create!(name: 'Bull riding')
  skill << category[1].skills.create!(name: 'Body-Building')
category << Category.create!(name: 'Cooking')
  skill << category[2].skills.create!(name: 'Water Boiling')
  skill << category[2].skills.create!(name: 'Deep Fry')
  skill << category[2].skills.create!(name: 'Stir Fry')
  skill << category[2].skills.create!(name: 'Salad Making')
category << Category.create!(name: 'Languages')
  skill << category[3].skills.create!(name: 'French')
  skill << category[3].skills.create!(name: 'Spanish')
  skill << category[3].skills.create!(name: 'English')
  skill << category[3].skills.create!(name: 'German')
category << Category.create!(name: 'Sciences')
  skill << category[4].skills.create!(name: 'Chemistry')
  skill << category[4].skills.create!(name: 'Biology')
category << Category.create!(name: 'Math')
  skill << category[5].skills.create!(name: 'Algebra')
  skill << category[5].skills.create!(name: 'Calculus')
  skill << category[5].skills.create!(name: 'Geometry')